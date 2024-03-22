window.onload = function() {
    var seatCheckboxes = document.querySelectorAll('input[name="sn"]');
    var bookButton = document.querySelector('input[type="submit"]');

    function checkSeatSelection() {
        var atLeastOneSeatSelected = false;
        for (var i = 0; i < seatCheckboxes.length; i++) {
            if (seatCheckboxes[i].checked) {
                atLeastOneSeatSelected = true;
                break;
            }
        }
        bookButton.disabled = !atLeastOneSeatSelected;
    }

    seatCheckboxes.forEach(function(checkbox) {
        checkbox.addEventListener('change', checkSeatSelection);
    });

    checkSeatSelection();

    window.addEventListener('pageshow', function(event) {
        if (event.persisted || (window.performance && window.performance.navigation.type == 2)) {
            window.location.reload();
        }
    });
};
