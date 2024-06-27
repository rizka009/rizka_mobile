<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include 'koneksi.php';

$response = array();

if ($_SERVER['REQUEST_METHOD'] == "POST") {

    $id = $_POST['id'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $nohp = $_POST['nohp'];
    $email = $_POST['email'];

    // Update note based on the given id
    $update = "UPDATE pegawai SET firstname = '$firstname', lastname = '$lastname', nohp = '$nohp', email = '$email' WHERE id = '$id'";
    
    if (mysqli_query($koneksi, $update)) {
        $response['value'] = 1;
        $response['message'] = "Berhasil diperbarui";
    } else {
        $response['value'] = 0;
        $response['message'] = "Gagal diperbarui";
    }
    
    echo json_encode($response);

} else {
    $response['value'] = 0;
    $response['message'] = "Invalid Request Method";
    echo json_encode($response);
}

?>
