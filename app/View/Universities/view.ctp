<p>
    <?php echo $this->Html->link("Universities List", "/Universities/view"); ?>&nbsp;|&nbsp;
    <?php echo $this->Html->link("Add Universities", "#add_university"); ?>&nbsp;|&nbsp;
    <?php echo $this->Html->link("Logout", "/Users/logout"); ?>
</p>
<div><?php echo $this->Session->flash(); ?></div>
<table id="university-list-table">
    <thead>
    <tr>
        <th>select</th>
        <th>Name</th>
        <th>Abbreviation</th>
        <th>Region</th>
        <th>City</th>
    </tr>
    <tr>
        <td>
            Only selected items will be exported.
        </td>
        <td colspan="4">
            <strong>Double click</strong> on text to edit the values.<br>
            <strong>Enter</strong> to submit. <strong>Esc</strong>/<strong>Click outside of the cell</strong> to cancel.
        </td>
    </tr>
    </thead>
    <tbody>
    <?php echo $this->form->create("Universities", array("action" => "export")); ?>
    <tr>
        <td colspan="5">
            <input type="submit" name="export_csv" value="export" style="padding: 6px;">
            Only selected items will be exported.
        </td>
    <?php foreach ($universities as $university): ?>
    <tr data-university-id="<?php echo $university['University']['id']; ?>">
        <td><input type="checkbox" name="university_id[]" value="<?php echo $university['University']['id']; ?>">&lt;&ndash;&ndash;select</td>
        <td class="editable" id="name-<?php echo $university['University']['id']; ?>"><?php echo $university['University']['name']; ?></td>
        <td class="editable" id="abbr-<?php echo $university['University']['id']; ?>"><?php echo $university['University']['abbr']; ?></td>
        <td class="editable" id="region-<?php echo $university['University']['id']; ?>"><?php echo $university['University']['region']?></td>
        <td class="editable" id="city-<?php echo $university['University']['id']; ?>"><?php echo $university['University']['city']; ?></td>
    </tr>
    <?php endforeach; ?>
    <?php echo $this->form->end(); ?>
    </tbody>
</table>
<div>
    <?php echo $this->form->create("Universities", array("action" => "add", "id" => "add-university-form")); ?>
    <table id="add-university-table">
        <thead>
        <tr>
            <td colspan="5"><h1 id="add_university">Add a University</h1></td>
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
            <td><input type="text" name="data[University][0][region]" value="" placeholder="District, township, or city"></td>
            <td><input type="text" name="data[University][0][city]" value="" placeholder="City or country"></td>
        </tr>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="3"></td>
            <td>
                <button type="button" class="add_row" style="padding: 6px;">Add More</button>
                <input type="submit" class="submit_university" name="add" value="submit" style="padding: 6px;">
            </td>
        </tr>
        </tfoot>
    </table>
    <?php $this->form->end(); ?>
</div>