<?php
echo "<h1>Debiteur Database</h1><br><br>";

echo "<table style='border: double 10px black;'>";
$id = 'id';
$naam= 'naam';
$email = 'email';
$getal = 'getal';
echo '<tr><th>'.$id.'</th><th>'.$naam.'</th><th>'.$email.'</th><th>'.$getal.'</th><th>Action</th></tr>';

class TableRows extends RecursiveIteratorIterator {
  function __construct($it) {
    parent::__construct($it, self::LEAVES_ONLY);
  }

  function current() {
    return "<td style='width:150px;border:2px solid grey;'>" . parent::current(). "</td>";
  }

  function beginChildren() {
    echo "<tr>";
  }

  function endChildren() {
    echo "</tr>" . "\n";
  }
}

include_once ('DBdebiteur.php');

try {
  $stmt = $conn->prepare("SELECT * FROM debiteur");
  $stmt->execute();

  $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) {
    echo $v;
    if ($k=='id') {
      $id = strip_tags($v);
      $l= 'verwijder.php?id='.$id;
      $e= 'edit.php?id='.$id;
    }
    if ($k=='getal') {
      echo "<td><a href='$l'>X</a> <a href='$e'>E</a></td>";
    }
  }
} catch(PDOException $e) {
  echo "Error: " . $e->getMessage();
}
$conn = null;
echo "</table>";

echo "<a href='nieuw.php'>Nieuw</a>";
?>
