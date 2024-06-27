<?php

$koneksi = mysqli_connect("localhost", "root", "", "list_rs");

if($koneksi){

	// echo "Database berhasil konek";
	
} else {
	echo "gagal Connect";
}

?>