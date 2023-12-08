import 'package:flutter/material.dart';
import 'package:ujicoba_boemil/artikel_admin/artikel_utama/widget/isi.dart';
import 'package:ujicoba_boemil/artikel_admin/artikel_utama/widget/frame.dart';
import 'package:ujicoba_boemil/artikel_admin/artikel_utama/widget/artikel_item.dart';
//
import 'package:ujicoba_boemil/artikel_admin/artikel_utama/artikel_deskrip.dart';
//
import 'package:ujicoba_boemil/artikel_admin/artikel_utama/tambah_artikel.dart';
//import 'package:ujicoba_boemil/sunting_artikel.dart';

class ArtikelUtama extends StatelessWidget {
  final List<Map<String, String>> artikelList = [
    {'title': 'Judul Artikel 1', 'content': 'Isi artikel 1'},
    {'title': 'Judul Artikel 2', 'content': 'Isi artikel 2'},
    {'title': 'Judul Artikel 3', 'content': 'Isi artikel 3'},
    {'title': 'Judul Artikel 4', 'content': 'Isi artikel 4'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artikel',
      theme: ThemeData(
        primaryColor: Color(0xFFFE9CBF),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 254, 156, 191),
        ),
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Frame777(),
                Isi(
                  onItemClick: (item) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return DeskripArtikel();
                        },
                      ),
                    );
                    // Handle item click here
                    print('Item clicked: $item');
                  },
                ),
                // ARTIKEL
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: artikelList.length,
                  itemBuilder: (context, index) {
                    final artikel = artikelList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return DeskripArtikel();
                            },
                          ),
                        );
                      },
                      child: ArtikelItem(
                        imageUrl: 'assets/images/uploads.png',
                        title: artikel['title']!,
                        content: artikel['content']!,
                        onTap: () {
                          // Aksi ketika ArtikelItem di tap
                          print('ArtikelItem tapped: ${artikel['title']}');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DeskripArtikel();
                              },
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DeskripArtikel();
                        },
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 36,
                    child: TambahArtikel(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Artikel

//Tombol Tambah
class TambahArtikel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigasi ke halaman selanjutnya
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              // Gantilah 'HalamanSelanjutnya' dengan widget atau halaman yang ingin Anda tampilkan
              return ArtikelPenambah();
            },
          ),
        );
      },
      child: Container(
        width: 111,
        height: 36,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Color(0x336258A4),
              blurRadius: 20,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              /*  child: Center(
                child: Container(
                  width: 12.50,
                  height: 12.50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("assets/images/edit.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ), */
            ),
            const SizedBox(width: 4),
            Text(
              'Tambah',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF0E0C0C),
                fontSize: 16,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
                height: 0.09,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
