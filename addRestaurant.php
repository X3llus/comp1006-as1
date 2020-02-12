<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <?php

    $restaurant = $_POST["restaurant"];
    $rating = $_POST["star"];
    $review = htmlspecialchars($_POST["review"]);

    // Connect to my database
    $db = new PDO('mysql:host=172.31.22.43;dbname=Braden_W1095701', 'Braden_W1095701', 'P8TwvNsomx');

    // Make sql command to get our data
    $select = "SELECT id FROM Restaurants;";
    $cmd = $db->prepare($select);
    $cmd->execute();

    $restaurants = $cmd->fetchAll();
    $resArray = [];

    foreach ($restaurants as $res) {
      array_push($resArray, $res["id"]);
    }

    $valid = true;

    if(empty($restaurant)) {
      echo "You must select a restaurant <br />";
      $valid = false;
    } else if (!in_array($restaurant, $resArray)) {
      echo "Restaurant not in list <br />";
      $valid = false;
    }

    if(empty($rating)) {
      echo "You must give a star value <br />";
      $valid = false;
    } else if (!($rating >= 1 && $rating <= 5)) {
      echo "The rating must be between 1 and 5 stars <br />";
      $valid = false;
    }

    if(empty($review)) {
      echo "You must leave a review <br />";
      $valid = false;
    }

    ?>
  </body>
</html>
