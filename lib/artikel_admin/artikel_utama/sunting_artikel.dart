//Tambah Artikel
import 'package:flutter/material.dart';
import 'package:ujicoba_boemil/artikel_admin/artikel_utama/artikel_page.dart';
//import 'package:ujicoba_boemil/aturprofil.dart';

void main() {
  runApp(const SuntingArtikelBoemil());
}

class SuntingArtikelBoemil extends StatelessWidget {
  const SuntingArtikelBoemil();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunting Artikel',
      theme: ThemeData(
        primaryColor: Color(0xFFFE9CBF),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 254, 156, 191),
        ),
      ),
      home: ArtikelSunting(),
    );
  }
}

class ArtikelSunting extends StatelessWidget {
  final TextEditingController judulController = TextEditingController();
  final TextEditingController isiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sunting Artikel'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFEFEFE),
            ),
          ),

          //Unggah gambar
          const SizedBox(height: 17.20),
          Container(
            width: double.infinity,
            height: 650,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 285,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 350,
                          height: 285,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 12,
                                offset: Offset(0, 0),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                      //Posisi gambar
                      Positioned(
                        left: 18,
                        top: 50,
                        child: Container(
                          width: 311,
                          height: 200,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 316,
                                height: 25,
                                child: Text(
                                  'Unggah gambar',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Karla',
                                    fontWeight: FontWeight.w400,
                                    height: 0.05,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  // Implementasi untuk memilih gambar
                                  // Anda dapat menggunakan package image_picker atau yang serupa
                                },
                                child: Container(
                                  width: 336,
                                  height: 155,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          width: 336,
                                          height: 155,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 69,
                                        top: 0,
                                        child: Container(
                                          width: 172,
                                          height: 155,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/uploads.png"),
                                              fit: BoxFit.fill,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 69,
                                        top: -1,
                                        child: Container(
                                          width: 172,
                                          height: 155,
                                          decoration: ShapeDecoration(
                                            color: Color(0x3FA9A7A7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                // Bagian Judul
                const SizedBox(height: 30),
                Container(
                  width: 350,
                  height: 104,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 350,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 12,
                                offset: Offset(0, 0),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 320,
                                height: 50,
                                child: Text(
                                  'Judul   :',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Karla',
                                    fontWeight: FontWeight.w400,
                                    height: 0.05,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  controller: judulController,
                                  decoration: InputDecoration(
                                    hintText: 'Judul...',
                                    hintMaxLines: 10,
                                    hintStyle: TextStyle(
                                      color: Color(0x99645B5B),
                                      fontSize: 16,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      height: 0.09,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Bagian Isi
                const SizedBox(height: 30),
                Container(
                  width: 350,
                  height: 104,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 350,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 12,
                                offset: Offset(0, 0),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 320,
                                height: 50,
                                child: Text(
                                  'Isi   :',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Karla',
                                    fontWeight: FontWeight.w400,
                                    height: 0.05,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  controller: isiController,
                                  decoration: InputDecoration(
                                    hintText: 'Isi...',
                                    hintStyle: TextStyle(
                                      color: Color(0x99645B5B),
                                      fontSize: 16,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      height: 0.09,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Tombol Simpan
                const SizedBox(height: 40),
                Container(
                  width: 320,
                  height: 44,
                  child: Stack(
                    children: [
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            // Isi dengan aksi yang diinginkan saat tombol ditekan
                            print('Judul: ${judulController.text}');
                            print('Isi: ${isiController.text}');

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return ArtikelUtama(); // Gantilah 'HalamanLain' dengan nama halaman yang ingin Anda navigasikan.
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFD71AE),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.47)),
                          ),
                          child: SizedBox(
                            width: 350,
                            height: 100, // Sesuaikan dengan kebutuhan
                            child: Center(
                              child: Text(
                                'Simpan',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Sofia Sans',
                                  fontWeight: FontWeight.w700,
                                  height: 0.05,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
