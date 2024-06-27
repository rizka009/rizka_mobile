<?php

header("Access-Control-Allow-Origin: *"); // Mengizinkan permintaan dari semua domain
include 'koneksi.php'; // Mengimpor file koneksi.php

// Pastikan metode permintaan adalah POST
if ($_SERVER['REQUEST_METHOD'] === "POST") {

    // Inisialisasi respons
    $response = array();

    // Mendapatkan data dari permintaan POST dan melakukan sanitasi input
    $nama = isset($_POST['nama']) ? htmlspecialchars($_POST['nama']) : null;
    $nobp = isset($_POST['nobp']) ? htmlspecialchars($_POST['nobp']) : null;
    $email = isset($_POST['email']) ? filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) : null;
    $nohp = isset($_POST['nohp']) ? htmlspecialchars($_POST['nohp']) : null;

    // Memastikan bahwa data yang diterima tidak kosong
    if ($nama === null || $nobp === null || $email === false || $nohp === null) {
        $response['isSuccess'] = false;
        $response['message'] = "Gagal menyimpan karyawan: Data tidak lengkap atau tidak valid";
        echo json_encode($response);
        exit; // Keluar dari skrip
    }

    // Membuat prepared statement untuk menyimpan data karyawan
    $stmt = $koneksi->prepare("INSERT INTO pegawai (nama, nobp, email, nohp) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $nama, $nobp, $email, $nohp);

    // Menjalankan prepared statement
    $isSuccess = $stmt->execute();

    // Memeriksa apakah query berhasil dijalankan
    if ($isSuccess) {
        // Menutup prepared statement
        $stmt->close();

        // Mengambil ID karyawan yang baru saja disimpan
        $newId = $koneksi->insert_id;

        // Menyiapkan respons sukses
        $response['isSuccess'] = true;
        $response['message'] = "Berhasil menyimpan karyawan";
        $response['newId'] = $newId;
    } else {
        // Jika query gagal dijalankan, kirim respons error
        $response['isSuccess'] = false;
        $response['message'] = "Gagal menyimpan karyawan: Terjadi kesalahan pada server";
    }

    // Mengubah array respons menjadi format JSON dan mencetaknya
    echo json_encode($response);
} else {
    // Jika metode permintaan bukan POST, kirim respons error
    $response['isSuccess'] = false;
    $response['message'] = "Gagal menyimpan karyawan: Metode permintaan tidak valid";
    echo json_encode($response);
}

?>
