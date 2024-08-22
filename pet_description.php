<!DOCTYPE html>
<html lang="en">

<head>
  <title>Login Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="style.css?v=1.0">
</head>

<body>

<?php

include('Connection.php'); // include 'Connection.php';

$pet_id = $_REQUEST['pet_id'];

$sql =  "select * from padopt_db where pet_id=$pet_id";
$result = $con->query($sql);

$row = $result->fetch_assoc();

$pet_id = $row['pet_id'];
$pet_breed = $row['pet_breed'];
$pet_desc = $row['pet_desc'];
$pet_image = $row['pet_image'];

?>
<?php include 'header.php'; ?>
   
    <h1 class="text-center">Pet Decription</h1>

  

   <div class="container text-center bg-black">
     
  

     <div class="row" id="desc">
      <div class="col">
          <h1> <?php echo $pet_breed; ?>  </h1>
          <img src="<?php echo $pet_image; ?>" alt="" class="w-100" style="border:10px ">
          <p style="font-size:20px; text-align:justify; color:white;"> <?php echo $pet_desc; ?>
          Dogs, known scientifically as Canis lupus familiaris, are domesticated mammals and a subspecies of the gray wolf. Their history with humans dates back thousands of years, evolving from wild animals to beloved companions. This unique relationship has earned them the title of "man's best friend."

Dogs come in an array of breeds, each with distinct characteristics in terms of size, shape, temperament, and coat type. The American Kennel Club (AKC) recognizes over 190 dog breeds, including popular ones like the Labrador Retriever, German Shepherd, and Poodle. Each breed has specific traits and purposes, ranging from working and hunting to companionship and therapy.

The social structure of dogs is hierarchical, often leading to the formation of packs in the wild. Within a household, they view their human family as their pack and often exhibit loyalty and protectiveness. Training and socialization from a young age are crucial for a dog's development, ensuring they become well-behaved members of the family.

Dogs possess remarkable senses, especially their sense of smell, which is far superior to that of humans. This makes them invaluable in various roles such as search and rescue, detection of explosives and drugs, and even medical alert dogs for detecting health issues like seizures or low blood sugar levels.

Their companionship offers numerous benefits to humans, including emotional support, improved mental health, and increased physical activity through walks and play. The bond between humans and dogs is often deep and profound, characterized by mutual affection and loyalty.


          </p>
      </div>
     </div>
   </div>
   <h1 class="text-center">Thanks for your precious time.</h1>



  <?php include 'footer.php'; ?>


</body>

</html>