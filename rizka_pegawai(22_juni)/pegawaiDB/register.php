<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include 'koneksi.php';

$response = array();

if ($_SERVER['REQUEST_METHOD'] == "POST") {

    $judul_note = $_POST['judul_note'];
    $isi_note = $_POST['isi_note'];
    $ket = $_POST['ket'];

    $cek = "SELECT * FROM notes WHERE judul_note = '$judul_note' || isi_note = '$isi_note'";
    $result = mysqli_fetch_array(mysqli_query($koneksi, $cek));

    if (isset($result)) {
        $response['value'] = 2;
        $response['message'] = "Judul atau isi telah digunakan";
        echo json_encode($response);
    } else {
        $insert = "INSERT INTO notes (judul_note, isi_note, ket) VALUES ('$judul_note', '$isi_note', '$ket')";
        if (mysqli_query($koneksi, $insert)) {
            $response['value'] = 1;
            $response['message'] = "Berhasil didaftarkan";
            echo json_encode($response);
        } else {
            $response['value'] = 0;
            $response['message'] = "Gagal didaftarkan";
            echo json_encode($response);
        }
    }
} else {
    $response['value'] = 0;
    $response['message'] = "Invalid Request Method";
    echo json_encode($response);
}

?>
