$(document).ready(function () {
    jQuery.fn.delay = function (time, func) {
        return this.each(function () {
            setTimeout(func, time);
        });
    };
    $("#fadeSection").hide()
    $("input[id*=HyperLink1]").click(function () {
        $("#fadeSection").fadeIn(3000)
        $('#fadeSection').fadeOut(1000)
    })
    return false;
});
        });