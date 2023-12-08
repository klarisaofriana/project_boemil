import 'package:flutter/material.dart';
import 'package:ujicoba_boemil/artikel_admin/artikel_utama/tambah_artikel.dart';
//import 'package:ujicoba_boemil/widget/frame.dart';
// Hal TambahArtikel
//import 'package:ujicoba_boemil/tambah_artikel.dart';

void main() {
  runApp(FrameBelajar());
}

class FrameBelajar extends StatelessWidget {
  const FrameBelajar();

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
      home: Frame777(),
    );
  }
}

class Frame777 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        // Teks Selamat Datang Admin
        Text(
          'Selamat Datang, Admin!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Gothic A1',
            fontWeight: FontWeight.bold,
          ),
        ),
        // Jarak antara teks selamat datang dan kolom artikel
        SizedBox(height: 16),
        // Kolom artikel
        buildTextContainer('Selamat Datang\n', 17, FontWeight.w500, 400, 33),
        buildTextContainer('\n\nAdmin!', 22, FontWeight.w800, 400, 33),
      ],
    );
  }

  // Fungsi untuk membuat container teks
  Widget buildTextContainer(String text, double fontSize, FontWeight fontWeight,
      double width, double height) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      width: width,
      height: height,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize,
          fontFamily: 'Gothic A1',
          fontWeight: fontWeight,
          height: (1.0 / fontSize),
        ),
      ),
    );
  }
}

class NewsFeedPage2 extends StatelessWidget {
  const NewsFeedPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artikel'),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          child: ListView.builder(
            itemCount: _articles.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _articles[index];
              return Container(
                height: 136,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 207, 13, 162)),
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text("${item.author} · ${item.postedOn}",
                            style: Theme.of(context).textTheme.caption),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icons.delete,
                            /* Icons.share,
                            Icons.more_vert */
                          ].map((e) {
                            return InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(e, size: 16),
                              ),
                            );
                          }).toList(),
                        )
                      ],
                    )),
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 214, 210, 211),
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(item.imageUrl),
                            ))),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String imageUrl;
  final String author;
  final String postedOn;

  Article(
      {required this.title,
      required this.imageUrl,
      required this.author,
      required this.postedOn});
}

final List<Article> _articles = [
  Article(
    imageUrl: "assets/images/uploads.png",
    title:
        "Lorem ipsum dolor sit amet consectetur. Blandit feugiat mauris hac quis netus tortor nunc",
    author: "Admin",
    postedOn: "Yesterday",
  ),
  Article(
      imageUrl: "assets/images/uploads.png",
      title:
          "Lorem ipsum dolor sit amet consectetur. Blandit feugiat mauris hac quis netus tortor nunc",
      author: "Admin",
      postedOn: "4 hours ago"),
  Article(
    imageUrl: "assets/images/uploads.png",
    title:
        "Lorem ipsum dolor sit amet consectetur. Blandit feugiat mauris hac quis netus tortor nunc",
    author: "Admin",
    postedOn: "2 days ago",
  ),
  Article(
    imageUrl: "assets/images/uploads.png",
    title:
        "Lorem ipsum dolor sit amet consectetur. Blandit feugiat mauris hac quis netus tortor nunc",
    author: "Admin",
    postedOn: "22 hours ago",
  ),
  Article(
    imageUrl: "assets/images/uploads.png",
    title:
        "Lorem ipsum dolor sit amet consectetur. Blandit feugiat mauris hac quis netus tortor nunc",
    author: "Admin",
    postedOn: "2 hours ago",
  ),
  Article(
    imageUrl: "assets/images/uploads.png",
    title:
        "Lorem ipsum dolor sit amet consectetur. Blandit feugiat mauris hac quis netus tortor nunc",
    author: "Admin",
    postedOn: "10 days ago",
  ),
  Article(
    imageUrl: "assets/images/uploads.png",
    title:
        "Lorem ipsum dolor sit amet consectetur. Blandit feugiat mauris hac quis netus tortor nunc",
    author: "Admin",
    postedOn: "10 hours ago",
  ),
];

//
class EditKalender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 111,
      height: 36,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Color(0x336258A4),
            blurRadius: 16,
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
            child: Center(
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
            ),
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
          InkWell(
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
          ),
        ],
      ),
    );
  }
}
