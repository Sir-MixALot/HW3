function sendRequest() {
    let x = new XMLHttpRequest();
    let data = new FormData(document.forms.notes);
    x.open('POST', 'create.php', true);
    x.onload = function() {
        if (x.status == 200) {
            document.getElementById("crn").innerHTML = x.response;
        }
    };
    x.send(data);
}