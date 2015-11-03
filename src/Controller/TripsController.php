<?php
namespace App\Controller;

use App\Controller\AppController;

class TripsController extends AppController
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
    }
	
	public function index()
    {
		$trips = $this->paginate($this->Trips->find('all'));
        $this->set([
            'trips' => $trips,
            '_serialize' => ['trips']
        ]);
    }
	
	public function view($id)
    {
        $trip = $this->Trips->get($id, [ 'contain' => ['Flights'] ]);
        $this->set([
            'trip' => $trip,
            '_serialize' => ['trip']
        ]);
    }

    public function add()
    {
        $trip = $this->Trips->newEntity($this->request->data);
        if ($this->Trips->save($trip)) {
            $message = 'Saved';
        } else {
            $message = 'Error';
        }
        $this->set([
            'message' => $message,
            'trip' => $trip,
            '_serialize' => ['message', 'trip']
        ]);
    }

    public function edit($id)
    {
        $trip = $this->Trips->get($id);
		$message = '';
        if ($this->request->is(['post', 'put'])) {
            $trip = $this->Trips->patchEntity($trip, $this->request->data);
            if ($this->Trips->save($trip)) {
                $message = 'Saved';
            } else {
                $message = 'Error';
            }
        }
        $this->set([
            'message' => $message,
            'trip' => $trip,
            '_serialize' => ['message', 'trip']
        ]);
    }

    public function delete($id)
    {
        $trip = $this->Trips->get($id);
        $message = 'Deleted';
        if (!$this->Trips->delete($trip)) {
            $message = 'Error';
        }
        $this->set([
            'message' => $message,
            '_serialize' => ['message']
        ]);
    }
}