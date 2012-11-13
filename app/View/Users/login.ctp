<fieldset>
    <legend>User login</legend>
    <?php
    echo $this->form->create('User');
    echo $this->form->input('username');
    echo $this->form->input('password');
    echo $this->form->end('Login')
    ?>
</fieldset>
<p>
    Username: staff<br>
    Password: 12345<br>
    Role: Staff

    Can only view Lists.
</p>
<p>
    Username: admin<br>
    Password: 12345<br>
    Role: Administrator

    Has all the access
</p>