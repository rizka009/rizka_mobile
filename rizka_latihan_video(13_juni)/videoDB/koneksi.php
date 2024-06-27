<?php

$koneksi = mysqli_connect("localhost", "root", "", "db_video");

if($koneksi){

	// echo "Database berhasil konek";
	
} else {
	echo "gagal Connect";
}

?>