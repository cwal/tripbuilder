<?php
namespace App\Controller;

use App\Controller\AppController;

class AirportsController extends AppController
{
    public $paginate = [
        'page' => 1,
        'limit' => 10,
        'maxLimit' => 200
    ];
	
	public function initialize()
    {
        parent::initialize();
        $this->loadComponent('RequestHandler');
        $this->loadComponent('Paginator');
    }
	
	public function index()
    {
		$airports = $this->paginate($this->Airports->find('all'));
        $this->set([
            'airports' => $airports,
            '_serialize' => ['airports']
        ]);
    }
	
	public function view($id)
    {
        $airport = $this->Airports->get($id);
        $this->set([
            'airport' => $airport,
            '_serialize' => ['airport']
        ]);
    }

    public function add()
    {
        $airport = $this->Airports->newEntity($this->request->data);
        if ($this->Airports->save($airport)) {
            $message = 'Saved';
        } else {
            $message = 'Error';
        }
        $this->set([
            'message' => $message,
            'airport' => $airport,
            '_serialize' => ['message', 'airport']
        ]);
    }

    public function edit($id)
    {
        $airport = $this->Airports->get($id);
		$message = '';
        if ($this->request->is(['post', 'put'])) {
            $airport = $this->Airports->patchEntity($airport, $this->request->data);
            if ($this->Airports->save($airport)) {
                $message = 'Saved';
            } else {
                $message = 'Error';
            }
        }
        $this->set([
            'message' => $message,
            'airport' => $airport,
            '_serialize' => ['message', 'airport']
        ]);
    }

    public function delete($id)
    {
        $airport = $this->Airports->get($id);
        $message = 'Deleted';
        if (!$this->Airports->delete($airport)) {
            $message = 'Error';
        }
        $this->set([
            'message' => $message,
            '_serialize' => ['message']
        ]);
    }
}