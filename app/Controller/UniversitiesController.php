<?php
/**
 * User: Ding-Wen Chen
 * Date: 09/11/12
 * Time: 4:23 AM
 */
class UniversitiesController extends AppController
{
    public $helpers = array('Html', 'Form', 'Session');

    public function view()
    {
        $universities = $this->University->find('all');
        $this->set('universities', $universities);
    }

    public function search()
    {
        if ($this->request->is('post')) {

        }
    }

    public function add()
    {
        if ($this->request->is('post')) {
            $universities = $this->request->data;
            unset($universities['add']);

            if ($this->University->saveAll($universities['University'])) {
                $this->Session->setFlash("Universities are added.");
            } else {
                $this->Session->setFlash("Cannot add universities.");
            }
        }
        $this->redirect(array('action' => 'view'));
    }
}