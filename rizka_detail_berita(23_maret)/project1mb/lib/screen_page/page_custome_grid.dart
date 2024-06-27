import 'package:flutter/material.dart';
import 'detail_grid.dart';

class PageCustomeGrid extends StatefulWidget {
  const PageCustomeGrid({super.key});

  @override
  State<PageCustomeGrid> createState() => PageCustomeGridState();
}

class PageCustomeGridState extends State<PageCustomeGrid> {
  List<Map<String, dynamic>> listMovie = [
    {
      "judul": "Primbon",
      "gambar": "film1.jpeg",
      "harga": 50000,
    },
    {
      "judul": "Ketika Berhenti di Sini",
      "gambar": "film2.jpg",
      "harga": 35000,
    },
    {
      "judul": "Budi Pekerti",
      "gambar": "film3.jpg",
      "harga": 40000,
    },
    {
      "judul": "Buya Hamka",
      "gambar": "film4.jpg",
      "harga": 55000,
    },
    {
      "judul": "Jendela Seribu Sungai",
      "gambar": "film5.jpg",
      "harga": 45000,
    },
    {
      "judul": "Mangkujiwo",
      "gambar": "film6.jpg",
      "harga": 45000,
    },
    {
      "judul": "Detektif Jaga Jarak",
      "gambar": "film7.jpg",
      "harga": 50000,
    },
    {
      "judul": "Hidayah",
      "gambar": "film8.jpg",
      "harga": 40000,
    },
    {
      "judul": "Waktu Maghrib",
      "gambar": "film9.jpg",
      "harga": 40000,
    },
    {
      "judul": "Malam Para Jahanam",
      "gambar": "film10.jpg",
      "harga": 55000,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custome Grid"),
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.builder(
          itemCount: listMovie.length,
          gridDelegate: const
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            DetailGrid(listMovie[index])));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridTile(
                    footer: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color:
                          Colors.black)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${listMovie[index]["judul"]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text("Rp. ${listMovie[index]["harga"]}")
                        ],
                      ),
                    ),
                    child:
                    Image.asset("gambar/${listMovie[index]["gambar"]}")),
              ),
            );
          }),
    );
  }
}