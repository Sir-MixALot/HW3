<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
        <link rel="stylesheet" href="style.css">
        <script src="ajax.js"></script>
        <title>HW(part3)</title>
    </head>
    <body>
        <div class="wrapper">
        <form name = "notes">
            <label>User</label>
            <input type="text" name="user">
            <br>
            <label>Note</label>
            <textarea name="note" cols="25" rows="5"></textarea>
            <br>
            <input type="button" value="Create new note" class="butt" type="submit" onClick="sendRequest();">  
            <br>
        </form>   
        <a href="index.php"><button>Show all notes</button></a>
        <div id="crn"></div>
        </div>
    </body>
</html>