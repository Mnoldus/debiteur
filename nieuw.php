<?php
echo '<h1>Nieuw persoon toevoegen</h1>';

if ($_POST) {
    include_once('DBdebiteur.php');
    echo "<h2>regel toevoegen.</h2>";
    $naam = $_POST['naam'];
    $email = $_POST['email'];
    $getal = $_POST['getal'];
    try {
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "INSERT INTO debiteur (naam, email, getal)
                VALUES ('$naam', '$email', '$getal')";
        $conn->exec($sql);
        echo "gegevens teogevoegt";
    } catch (PDOException $e) {
        echo $sql . "<br>" . $e->getMessage();
    }

    $conn = null;
}

echo "
 <form action=\"nieuw.php\" method='post'>
  <label for=\"naam\">naam:</label><br>
  <input type=\"text\" id=\"naam\" name=\"naam\"><br>
  <label for=\"getal\">getal:</label><br>
  <input type=\"text\" id=\"getal\" name=\"getal\"><br>
  <label for=\"email\">email:</label><br>
  <input type=\"text\" id=\"email\" name=\"email\"><br><br>
  <input type=\"submit\" value=\"verstuur\">
</form> 

<a href='index.php'>Terug naar index</a>
";