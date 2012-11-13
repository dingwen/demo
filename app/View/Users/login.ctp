<fieldset>
    <?php echo $this->Session->flash('auth'); ?>
    <legend>User login</legend>
    <?php
    echo $this->form->create('User');
    echo $this->form->input('username');
    echo $this->form->input('password');
    echo $this->form->end('Login')
    ?>
</fieldset>