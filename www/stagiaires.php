<?php
  include("./php/inc.php");
  $stagiaires = getStagiaires();
 ?>
<!DOCTYPE html>
<html lang="fr" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="./css/style.css">
  </head>
  <body>
    <header>
      <?php include("./php/nav.php"); ?>
    </header>

    <section>
      <table>
      <?php
      var_dump($stagiaires);
      foreach ($stagiaires as $key => $value) {
        echo "<tr>";
        echo "<td>" . $value["nom"] . "</td>";
        echo "<td>" . $value["prenom"] . "</td>";
        echo "<td>" . $value["email"] . "</td>";
        echo "<td>" . $value["noTel"] . "</td>";
        echo "<td>" . $value["degre"] . "</td>";
        echo "</tr>";
      }
      ?>
      </table>
    </section>

  </body>
  <?php include("./php/footer.php"); ?>
</html>
