<?php
header("Access-Control-Allow-Origin: *");
include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] === "POST") {
    $response = array();

    $id = isset($_POST['id']) ? htmlspecialchars($_POST['id']) : null;

    if (empty($id)) {
        $response['is_success'] = false;
        $response['value'] = 0;
        $response['message'] = "Gagal menghapus notes: ID tidak diberikan";
        echo json_encode($response);
        exit;
    }

    $stmt = $koneksi->prepare("DELETE FROM notes WHERE id=?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        $stmt->close();
        $response['is_success'] = true;
        $response['value'] = 1;
        $response['message'] = "Berhasil menghapus notes";
        echo json_encode($response);
    } else {
        $response['is_success'] = false;
        $response['value'] = 0;
        $response['message'] = "Gagal menghapus notes: Terjadi kesalahan pada server";
        echo json_encode($response);
    }
} else {
    $response['is_success'] = false;
    $response['value'] = 0;
    $response['message'] = "Gagal menghapus notes: Metode permintaan tidak valid";
    echo json_encode($response);
}
?>
