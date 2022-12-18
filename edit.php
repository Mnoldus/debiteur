<?php

echo '<h1>Update van id ' . $_GET['id'] . '<h1>';

include_once('DBdebiteur.php');

echo "<p><a href='index.php'>terug naar homepage</a></p>";

if ($_GET['id']) {
    $id = $_GET['id'];
    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $stmt = $conn->prepare("SELECT * FROM debiteur WHERE id=$id");
        $stmt->execute();

        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);

        foreach ($stmt->fetchAll() as $k => $v) {
            $email = $v['email'];
            $naam = $v['naam'];
            $getal = $v['getal'];

            echo "
             <form action=\"edit.php\" method='post'>
              <label for=\"id\">id:</label><br>
              <input type=\"text\" id=\"id\" name=\"id\" value='$id'><br>
              <label for=\"naam\">naam:</label><br>
              <input type=\"text\" id=\"naam\" name=\"naam\" value='$naam'><br>             
              <label for=\"email\">email:</label><br>
              <input type=\"text\" id=\"email\" name=\"email\" value='$email'><br>
              <label for=\"getal\">getal:</label><br>
              <input type=\"text\" id=\"getal\" name=\"getal\" value='$getal'><br>

              <input type=\"submit\" value=\"Wegschrijven\">
            </form> 
            
            <a href='index.php'>Terug naar index</a>
            ";
        }

    } catch (PDOException $e) {
        echo $sql . "<br>" . $e->getMessage();
    }

    $conn = null;
}

if ($_POST) {
    try {
        $id = $_POST['id'];
        $naam = $_POST['naam'];
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $sql = "UPDATE debiteur SET naam='$naam' WHERE id=$id";

        $stmt = $conn->prepare($sql);

        $stmt->execute();

        echo $stmt->rowCount() . " records UPDATED successfully";
    } catch (PDOException $e) {
        echo $sql . "<br>" . $e->getMessage();
    }

    $conn = null;
}
