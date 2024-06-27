<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include 'koneksi.php';

$response = array();

if ($_SERVER['REQUEST_METHOD'] == "POST") {

    $id = $_POST['id'];
    $judul_note = $_POST['judul_note'];
    $isi_note = $_POST['isi_note'];
    $ket = $_POST['ket'];

    // Update note based on the given id
    $update = "UPDATE notes SET judul_note = '$judul_note', isi_note = '$isi_note', ket = '$ket' WHERE id = '$id'";
    
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
