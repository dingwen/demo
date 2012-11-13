<?php
App::uses('AppController', 'Controller');
/**
 * Users Controller
 *
 * @property User $User
 */
class UsersController extends AppController
{

    public function beforeFilter()
    {
        parent::beforeFilter();
        $this->Auth->allow('add', 'logout', 'login');
    }

    /**
     * add method
     *
     * @return void
     */
    public function add()
    {
        if ($this->request->is('post')) {
            $this->User->create();
            if ($this->User->save($this->request->data)) {
                $this->Session->setFlash(__('The user has been saved'));
                $this->redirect(array('action' => 'login'));
            } else {
                $this->Session->setFlash(__('The user could not be saved. Please, try again.'));
            }
        }
    }

    public function login() {
        if($this->request->is('post')) {
            if($this->Auth->login()) {
                $this->redirect($this->Auth->redirect());
            } else {
                $this->Session->setFlash('Login Failed. Please try again.');
            }
        }
    }

    public function logout() {
        $this->redirect($this->Auth->logout());
    }
}
