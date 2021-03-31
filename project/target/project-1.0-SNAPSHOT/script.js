function cartadd() {
    alert("added");
}

function cartRemove() {
    alert("REmoved");
}

$(document).ready(function() {
    var val;
    $("#cartRemove").click(function() {
        $("#cart1").hide();
        alert("removed");
    });
    $("#addMe").click(function() {
        var par = document.getElementById('qu');

        val = par.innerHTML;

        val = parseInt(val);
        if (val == 1) {
            $("#subMe").prop('disabled', false);
        }
        val++;
        par.innerHTML = val;
    });
    $("#subMe").click(function() {
        var par = document.getElementById('qu');

        val = par.innerHTML;

        val = parseInt(val);
        if (val == 2) {
            $(this).prop('disabled', true);
        }
        val--;
        par.innerHTML = val;
    });
});