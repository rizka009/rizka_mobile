<?php

$koneksi = mysqli_connect("localhost", "root", "", "mobile");

if($koneksi){

	// echo "Database berhasil konek";
	
} else {
	echo "gagal Connect";
}

?>