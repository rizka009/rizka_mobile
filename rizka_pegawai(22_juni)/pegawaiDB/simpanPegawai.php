<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include 'koneksi.php';

$response = array();

if ($_SERVER['REQUEST_METHOD'] == "POST") {

    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $nohp = $_POST['nohp'];
    $email = $_POST['email'];
    
    $insert = "INSERT INTO pegawai (firstname, lastname, nohp, email) VALUES ('$firstname', '$lastname', '$nohp', '$email')";
    
    if (mysqli_query($koneksi, $insert)) {
        $response['value'] = 1;
        $response['message'] = "Berhasil ditambahkan";
    } else {
        $response['value'] = 0;
        $response['message'] = "Gagal ditambahkan";
    }
    
    echo json_encode($response);

} else {
    $response['value'] = 0;
    $response['message'] = "Invalid Request Method";
    echo json_encode($response);
}

?>
