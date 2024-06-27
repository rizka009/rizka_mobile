import 'package:flutter/material.dart';

class ManajemenInformatika extends StatelessWidget {
  const ManajemenInformatika({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Manajemen Informatika',
          style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Deskripsi dan Profil',
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Program Studi D3 Manajemen Informatika didirikan pada tahun 2005, '
                    'dan terakreditasi dengan peringkat B berdasarkan Surat Keputusan '
                    'Badan Akreditasi nasional Perguruan Tinggi (BAN-PT) Departemen Pendidikan '
                    'dan kebudayaan republik Indonesia Surat Keputusan Nomor :1196/SK/BAN- PT/Akred/Dpl-III/XII/2015 '
                    'dengan nilai akreditasi 338.Arah kajian keilmuan dari program studi ini mencakup disiplin, proses, '
                    'teknik dan alat bantu yang dibutuhkan dalam rekayasa perangkat lunak yang meliputi tahap perencanaan, '
                    'pembangunan dan implementasi. Program studi D3 Manajemen Informatika yang merupakan kesatuan rencana '
                    'belajar yang mengkaji, menerapkan, dan mengembangkan ilmu manajemen informatika yang melandasi rancang '
                    'bangun sebuah sistem maupun aplikasi yang berdasarkan sistem informasi.',
                  style: TextStyle(fontSize: 15
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
              color: Colors.orange,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}