<div><?php echo $this->Session->flash(); ?></div>
<table id="university-list-table">
    <thead>
    <tr>
        <th>Name</th>
        <th>Abbreviation</th>
        <th>Region</th>
        <th>City</th>
    </tr
    </thead>
    <tbody>
    <?php foreach ($universities as $university): ?>
    <tr data-university-id="<?php echo $university['University']['id']; ?>">
        <td><?php echo $university['University']['name']; ?></td>
        <td><?php echo $university['University']['abbr']; ?></td>
        <td><?php echo $university['University']['region']?></td>
        <td><?php echo $university['University']['city']; ?></td>
    </tr>
    <?php endforeach; ?>
    </tbody>
</table>
<div>
    <?php echo $this->form->create("Universities", array("action" => "add", "id" => "add-university-form")); ?>
    <table id="add-university-table">
        <thead>
        <tr>
            <td colspan="5"><h1>Add a University</h1></td>
        </tr>
        <tr>
            <th>Name</th>
            <th>Abbreviation</th>
            <th>Region</th>
            <th>City</th>
            <th>remove row</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><input type="text" name="data[University][0][name]" value="" placeholder="University Name"></td>
            <td><input type="text" name="data[University][0][abbr]" value="" placeholder="Abbreviation"></td>
            <td><input type="text" name="data[University][0][region]" value=""
                       placeholder="District, township, or city"></td>
            <td><input type="text" name="data[University][0][city]" value="" placeholder="City or country"></td>
        </tr>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="3"></td>
            <td>
                <button type="button" class="add_row">Add More</button>
                <input type="submit" class="submit_university" name="add" value="Submit">
            </td>
        </tr>
        </tfoot>
    </table>
    <?php $this->form->end(); ?>
</div>