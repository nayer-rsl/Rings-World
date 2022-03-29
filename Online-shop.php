<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>Nira Jewellery</title>
  <link rel="stylesheet" type="text/css" href="assets/styles/CSS.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>

<body>
  <h1>Nira Rings Collection</h1>

  <?php

  $connect = mysqli_connect(
    'sql200.epizy.com',
    'epiz_29719926',
    'KiRkT7QVddz',
    'epiz_29719926_OnlineShop'
  );

  $query = 'SELECT * FROM Rings';
  $result = mysqli_query($connect, $query);

  echo '<h2>You can chose from ' . mysqli_num_rows($result) . ' Rings in our shop</h2>';

  echo '<div class="row mt-5 Rings">';
  while ($record = mysqli_fetch_assoc($result)) {
    echo '<div class="w3-col s12 l3 m6 w3-center">
            <div class="thumbnail">
              <a href="' . $record['url'] . '">            
                <img class="prod" src="assets/images/' . $record['image'] . '"alt="Ring">
                <p>' . $record['description'] . ' in ' . $record['material'] . '</p>
                <h3 class="Thumbnail mt-2">' . $record['name'] . '</h3>';
    if ($record['sale'] == Null) {
      echo  '<p>CDN$' . $record['price'] . '</p>';
    } else {
      echo  '<p><span style="color:red;text-decoration-line: line-through">CDN$' . $record['price'] . ' </span><span style="color: green"> 20% OFF-CDN$' . ($record['price'] - (0.2 * $record['price'])) . '</span></p>';
    }
    if ($record['outStock'] == Null) {
      echo '<button class="btn stayBtn" type="submit" action="x.php">Add to Bag</button>';
    } else {
      echo '<button class="btn stayBtn" type="submit" action="y.php">Notify me when in stock</button>';
    }

    echo      '</a>
            </div>
          </div>';
  }
  echo '</div>';

  ?>


</body>