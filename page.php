<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
        <link rel="stylesheet" href="style.css">
        <title>HW(part3)</title>
    </head>
    <body>
        <div class="wrapper">
            <h1>Page <?=$page?></h1>
            <div>
                <?php foreach ($pageData as $row) {echo $row['ID'] . '. ' . $row['USER'] . ' - ' . $row['NOTE'] . ' (' . $row['TIME'] . ')<br/>';}?>
            </div>
            <div class="links">
            <?php
            for ($i = 1; $i <= $pagesCount; $i++) {
                if ($i == $page) {
                    echo " $i ";
                } else {
            ?>
                <a href="index.php?page=<?=$i?>"><?=$i?></a> 
            <?php
                }
            }
            ?>
        </div>
        </div>
    </body>
</html>