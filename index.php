<?php
include('config.php');

try{
    $mysqli = new mysqli(SERVER, USERNAME, PASSWORD, DBNAME);
    if($mysqli->connect_errno){
        throw new Exception($mysqli->connect_error);
    }
$page = intval($_GET['page'] ?? 1);
if ($page < 1) {
    exit('The requested page does not exist!');
}


$itemsPerPage = 3;
$firstNumber = ($page - 1) * $itemsPerPage;
$sql_2 = 'SELECT * FROM notes';
    if (!($result = $mysqli->query($sql_2))) {
        throw new Exception($mysqli->error);
    }
    $data = $result->fetch_all(MYSQLI_ASSOC);
    $result->free();
    $r=count($data);
    $pagesCount = ceil($r/$itemsPerPage);
    if($pagesCount == 0) { 
        $pagesCount = 1; 
    }
    if ($page > $pagesCount) {
        exit('The requested page does not exist!');
    }
    $pageData = array_slice($data, $firstNumber, $itemsPerPage);
    include('page.php');
    $mysqli->close();
} catch(Exception $e) {
    echo $e->getMessage();
}


