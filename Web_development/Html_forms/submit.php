<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $dob = $_POST['dob'];
    $gender = $_POST['gender'];
    $address = $_POST['address'];
    $telephone = $_POST['telephone'];
    $email = $_POST['email'];
    $course = $_POST['course'];

    // You can perform further processing here, such as storing the data in a database
    // For demonstration purposes, we'll just echo the data
    echo "Name: $name <br>";
    echo "Date of Birth: $dob <br>";
    echo "Gender: $gender <br>";
    echo "Address: $address <br>";
    echo "Telephone: $telephone <br>";
    echo "Email: $email <br>";
    echo "Course: $course <br>";
} else {
    echo "Form submission error!";
}
?>
