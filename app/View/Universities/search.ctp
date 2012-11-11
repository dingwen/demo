<?php echo $this->form->create("Universities", array("action" => "search")); ?>
<p>
    <label for="search">Universities</label>
    <input type="text" id="search" name="search" value="" placeholder="University Name, Abbr., or Location">
    <input type="submit" name="search" value="Search">
</p>
<?php echo $this->form->end(); ?>