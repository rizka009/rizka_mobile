<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include 'koneksi.php';

$response = array();

if ($_SERVER['REQUEST_METHOD'] == "POST") {

    $judul_note = $_POST['judul_note'];
    $isi_note = $_POST['isi_note'];
    $ket = $_POST['ket'];

    // Remove uniqueness check for title and content
    $insert = "INSERT INTO notes (judul_note, isi_note, ket) VALUES ('$judul_note', '$isi_note', '$ket')";
    
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
