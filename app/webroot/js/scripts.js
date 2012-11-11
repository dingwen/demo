/**
 * Created with JetBrains PhpStorm.
 * User: Ding-Wen Chen
 * Date: 09/11/12
 * Time: 10:20 PM
 * To change this template use File | Settings | File Templates.
 */
(function () {
    $(document).ready(function() {
        $('button.add_row').on('click', function(e) {
            var numberOfRows = $('#add-university-table tbody tr').length;
            $("#add-university-table tbody").append(creatUniversityFiledsRow(numberOfRows));
        });

        $('#add-university-table tbody').on('click', 'a.remove-row', function(e) {
            e.preventDefault();
            $(this).parent().parent().remove();
        });



        function creatUniversityFiledsRow(numberOfRows) {
            var tr = $('<tr/>');
            var nameFiled = $('<td/>').append($('<input>', {
                'type': "text",
                'name': "data[University][" + numberOfRows + "][name]",
                'value': "",
                'placeholder': "University Name"
            }));
            var abbrFiled = $('<td/>').append($('<input>', {
                'type': "text",
                'name': "data[University][" + numberOfRows + "][abbr]",
                'value': "",
                'placeholder': "Abbreviation"
            }));
            var regionFiled = $('<td/>').append($('<input>', {
                'type': "text",
                'name': "data[University][" + numberOfRows + "][region]",
                'value': "",
                'placeholder': "District, township, or city"
            }));
            var cityFiled = $('<td/>').append($('<input>', {
                'type': "text",
                'name': "data[University][" + numberOfRows + "][city]",
                'value': "",
                'placeholder': "City or country"
            }));
            var removeRow = $('<td/>').append($('<a href="#remove-row" class="remove-row">[-]</a>'));
            tr.append([nameFiled, abbrFiled, regionFiled, cityFiled, removeRow]);
            return tr;
        }
    });
}());