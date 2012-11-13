<?php
App::uses('AppController', 'Controller');
/**
 * User: Ding-Wen Chen
 * Date: 09/11/12
 * Time: 4:23 AM
 */
class UniversitiesController extends AppController
{
    public function view()
    {
        $universities = $this->University->find('all');
        $this->set('universities', $universities);
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

    public function export()
    {
        if ($this->request->is('post')) {
            $result = $this->University->findAllById($this->request->data['university_id']);

            if ($result) {
                $this->autoRender = FALSE;
                $csv_data       = array('name', 'abbr', 'region', 'city');
                $fp               = fopen('php://temp/maxmemory:'.(2 * 1024 * 1024), 'r+');

                fputcsv($fp, $csv_data);

                foreach ($result as $university) {
                    unset($university['University']['id']);
                    $csv_row = array();

                    foreach ($university['University'] as $key => $value) {
                        $csv_row[] = $value;
                    }

                    fputcsv($fp, $csv_row);

                    $csv_data[] = $csv_row;
                }

                rewind($fp);
                $csv_output = stream_get_contents($fp);
                fclose($fp);

                $this->response->type('csv');
                $this->response->body($csv_output);
            }
        }
    }

    public function in_place_update()
    {
        $this->layout = 'ajax';
        if ($this->request->is('post')) {
            $field_and_id = explode('-', $this->request->data['id']);
            $value        = $this->request->data['value'];

            $this->University->id = $field_and_id[1];
            $result               = $this->University->saveField($field_and_id[0], $value);

            if ($result) {
                $this->set('update_result', $value);
            } else {
                $this->set('update_result', 'Failed to update');
            }
        }
    }
}