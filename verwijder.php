<?php

   echo '<h1>Verwijderen van gegevens '.$_GET['id'].'<h1>';

   if ($_GET['id']) {
       include_once ('DBdebiteur.php');
       $id = $_GET['id'];
       try {

           $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

           $sql = "DELETE FROM debiteur WHERE id=$id";

           $conn->exec($sql);
           echo "gegevens zijn verwijrderd<br>";
           echo "<a href='index.php'>terug naar homepage</a>";
       } catch (PDOException $e) {
           echo $sql . "<br>" . $e->getMessage();
        }

       $conn = null;
   }