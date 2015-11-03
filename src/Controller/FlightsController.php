<?php
namespace App\Controller;

use App\Controller\AppController;

class FlightsController extends AppController
{
    public $paginate = [
        'page' => 1,
        'limit' => 10,
        'maxLimit' => 100
    ];
	
	public function initialize()
    {
        parent::initialize();
        $this->loadComponent('RequestHandler');
        $this->loadComponent('Paginator');
		$this->loadModel('Trips');
		$this->loadModel('Airports');
    }
	
	public function index()
    {
		$flights = $this->paginate($this->Flights->find('all', [ 'contain' => ['Trips', 'FromAirports', 'ToAirports'] ]));
        $this->set([
            'flights' => $flights,
            '_serialize' => ['flights']
        ]);
    }
	
	public function view($id)
    {
        $flight = $this->Flights->get($id, [ 'contain' => ['Trips', 'FromAirports', 'ToAirports'] ]);
        $this->set([
            'flight' => $flight,
            '_serialize' => ['flight']
        ]);
    }

    public function add()
    {
        $flight = $this->Flights->newEntity($this->request->data);
        if ($this->Flights->save($flight)) {
            $message = 'Saved';
        } else {
            $message = 'Error';
        }
		$trips = $this->Trips->find('list');
		$airports = $this->Airports->find('list');
        $this->set([
            'message' => $message,
            'flight' => $flight,
            'trips' => $trips,
            'airports' => $airports,
            '_serialize' => ['message', 'flight', 'trips', 'airports']
        ]);
    }

    public function edit($id)
    {
        $flight = $this->Flights->get($id);
		$message = '';
        if ($this->request->is(['post', 'put'])) {
            $flight = $this->Flights->patchEntity($flight, $this->request->data);
            if ($this->Flights->save($flight)) {
                $message = 'Saved';
            } else {
                $message = 'Error';
            }
        }
		$trips = $this->Trips->find('list');
		$airports = $this->Airports->find('list');
        $this->set([
            'message' => $message,
            'flight' => $flight,
            'trips' => $trips,
            'airports' => $airports,
            '_serialize' => ['message', 'flight', 'trips', 'airports']
        ]);
    }

    public function delete($id)
    {
        $flight = $this->Flights->get($id);
        $message = 'Deleted';
        if (!$this->Flights->delete($flight)) {
            $message = 'Error';
        }
        $this->set([
            'message' => $message,
            '_serialize' => ['message']
        ]);
    }
}