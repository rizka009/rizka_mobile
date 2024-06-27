<?php

$koneksi = mysqli_connect("localhost", "root", "", "edukasiapp2");

if($koneksi){

	// echo "Database berhasil konek";
	
} else {
	echo "gagal Connect";
}

?>