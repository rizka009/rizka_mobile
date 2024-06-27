<?php
header("Access-Control-Allow-Origin: *");
include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] === "POST") {
    $response = array();

    $id = isset($_POST['id']) ? htmlspecialchars($_POST['id']) : null;
    $nama = isset($_POST['nama']) ? htmlspecialchars($_POST['nama']) : null;
    $nobp = isset($_POST['nobp']) ? htmlspecialchars($_POST['nobp']) : null;
    $email = isset($_POST['email']) ? filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) : null;
    $nohp = isset($_POST['nohp']) ? htmlspecialchars($_POST['nohp']) : null;

    if (empty($id) || empty($nama) || empty($nobp) || empty($email) || empty($nohp)) {
        $response['is_success'] = false;
        $response['value'] = 0;
        $response['message'] = "Gagal mengupdate karyawan: Data tidak lengkap atau tidak valid";
        echo json_encode($response);
        exit;
    }

    $stmt = $koneksi->prepare("UPDATE pegawai SET nama=?, nobp=?, email=?, nohp=? WHERE id=?");
    $stmt->bind_param("ssssi", $nama, $nobp, $email, $nohp, $id);

    if ($stmt->execute()) {
        $stmt->close();
        $response['is_success'] = true;
        $response['value'] = 1;
        $response['message'] = "Berhasil mengupdate karyawan";
        echo json_encode($response);
    } else {
        $response['is_success'] = false;
        $response['value'] = 0;
        $response['message'] = "Gagal mengupdate karyawan: Terjadi kesalahan pada server";
        echo json_encode($response);
    }
} else {
    $response['is_success'] = false;
    $response['value'] = 0;
    $response['message'] = "Gagal mengupdate karyawan: Metode permintaan tidak valid";
    echo json_encode($response);
}
?>
