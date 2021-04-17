<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
        <link rel="stylesheet" href="style.css">
        <title>HW(part3)</title>
    </head>
    <body>
        <div class="wrapper">
        <form action="create.php" method="post">
            <label>User</label>
            <input type="text" name="user">
            <br>
            <label>Note</label>
            <input type="text" name="note">
            <br>
            <button class="butt" type="submit"><span>Create new note</span></button>        
            <br>    
        </form>   
        <a href="index.php"><button>Show all notes</button></a>
        </div>
    </body>
</html>