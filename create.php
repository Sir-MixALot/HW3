<?php
include('config.php');
$user = $_POST['user'];
try{
    $mysqli = new mysqli(SERVER, USERNAME, PASSWORD, DBNAME);
    if($mysqli->connect_errno){
        throw new Exception($mysqli->connect_error);
    }
    
    $note = $_POST['note'];
    // $sql5 = "INSERT INTO `notes` (`id`, `user`, `note`, `time`) VALUES (NULL, "$user", "$note", NULL)";
    // if($user){
        $mysqli->query("INSERT INTO `notes` (`id`, `user`, `note`) VALUES (NULL, '$user', '$note')");
        header('Location: note.php');
    // }
    // else{
    //     echo "Enter an user name and a note!";
    // }
    $mysqli->close();
} catch(Exception $e) {
    echo $e->getMessage();
}