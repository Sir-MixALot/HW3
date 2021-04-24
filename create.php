<?php
include('config.php');
header("Content-type: text/plain; charset=UTF-8");
if (!empty($_POST['user']) && !empty($_POST['note'])){
    $user = $_POST['user'];
    $note = $_POST['note'];
try{
    $mysqli = new mysqli(SERVER, USERNAME, PASSWORD, DBNAME);
    if($mysqli->connect_errno){
        throw new Exception($mysqli->connect_error);
    }
    $mysqli->query("INSERT INTO `notes` (`id`, `user`, `note`) VALUES (NULL, '$user', '$note')");
    echo 'Data added successfully!';
    $mysqli->close();
} catch(Exception $e) {
    echo $e->getMessage();
}
}
else{
    echo 'You have to enter user name and note!';

}