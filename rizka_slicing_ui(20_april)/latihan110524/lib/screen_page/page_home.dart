import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Rizka!'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Aksi yang ingin dilakukan ketika tombol pencarian ditekan
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Search Dialog'),
                    content: Text('Tombol pencarian ditekan!'),
                    actions: [
                      TextButton(
                        child: Text('Tutup'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200, // Tinggi untuk carousel
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(), // Tambahkan ini
                scrollDirection: Axis.horizontal,
                itemCount: 3, // Jumlah item di carousel
                itemBuilder: (BuildContext context, int index) {
                  // Ganti dengan path relatif dari gambar di dalam direktori assets
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.9, // Lebar carousel, misal 80% dari lebar layar
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('gambar/image${index + 1}.jpg'), // Ganti dengan path gambar sesuai kebutuhan
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20), // Jarak antara carousel dan teks
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20), // Margin horizontal untuk teks
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center, // Opsional: Mengatur teks menjadi rata tengah
              ),
            ),


            SizedBox(height: 5), // Jarak antara carousel dan card
            Container(
              height: 150, // Tinggi untuk card
              margin: EdgeInsets.only(left: 5), // Margin horizontal untuk kartu
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(8), // Memberikan padding di sebelah kanan ListView
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  String title = '';
                  String subTitle = '';

                  // Menentukan konten berdasarkan index
                  switch (index) {
                    case 0:
                      title = 'Cyber Security';
                      subTitle = '145 course';
                      break;
                    case 1:
                      title = 'Data Science';
                      subTitle = '120 course';
                      break;
                    case 2:
                      title = 'Web Development';
                      subTitle = '200 course';
                      break;
                    case 3:
                      title = 'Mobile App';
                      subTitle = '180 course';
                      break;
                    case 4:
                      title = 'Cloud Computing';
                      subTitle = '100 course';
                      break;
                  }

                  return Container(
                    width: 200, // Lebar item card
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.white, // Warna putih untuk kartu
                      borderRadius: BorderRadius.circular(10), // Sudut kartu dibulatkan
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Warna bayangan
                          spreadRadius: 2, // Penyebaran bayangan
                          blurRadius: 5, // Ukuran blur bayangan
                          offset: Offset(0, 3), // Posisi bayangan
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.person), // Ikon orang
                          SizedBox(width: 8), // Jarak antara ikon dan teks
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title, // Judul kartu
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4), // Jarak antara judul dan jumlah kursus
                              Text(
                                subTitle, // Jumlah kursus
                                style: TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),


            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20), // Margin horizontal untuk teks
              child: Text(
                'Popular Blogs',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center, // Opsional: Mengatur teks menjadi rata tengah
              ),
            ),

            SizedBox(height: 5),
            Container(
              height: 230, // Tinggi untuk card
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 16), // Padding awal
                  for (int i = 0; i < 5; i++)
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5, // Lebar card
                      margin: EdgeInsets.only(right: 16), // Jarak antar card
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white, // Warna latar belakang
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Warna bayangan
                            spreadRadius: 2, // Penyebaran bayangan
                            blurRadius: 5, // Ukuran blur bayangan
                            offset: Offset(0, 3), // Posisi bayangan
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: SizedBox(
                              height: 150, // Tinggi gambar
                              child: Image.asset(
                                'gambar/image2.jpg', // Ganti dengan path gambar sesuai kebutuhan
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Data Science',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 4), // Jarak antara judul dan rating
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(width: 4), // Jarak antara ikon dan teks
                                    Text(
                                      '10.5k Learners',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(width: 16), // Padding akhir
                ],
              ),
            ),
            

          ],
        ),
      ),
    );
  }
}
