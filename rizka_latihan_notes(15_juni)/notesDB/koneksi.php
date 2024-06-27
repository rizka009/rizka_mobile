<?php

$koneksi = mysqli_connect("localhost", "root", "", "db_notes");

if($koneksi){

	// echo "Database berhasil konek";
	
} else {
	echo "gagal Connect";
}

?>