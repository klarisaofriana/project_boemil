import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LupaKataSandiPage(),
  ));
}

class LupaKataSandiPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  void handleKirim(BuildContext context) {
    String email = emailController.text;
    print('Email: $email');
    // Add your sending logic here

    // Show validation success dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Email Berhasil Terkirim'),
          actions: <Widget>[
            ElevatedButton(
              child: Text('OK', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF13095D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lupa Kata Sandi'),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFFF9DC0),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Card(
            color: Color(0xFFFCE6E6),
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0),
            ),
            child: Container(
              width: 400,
              height: 500,
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Lupa Kata Sandi?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 90),
                  Text(
                    'Lihat pesan masuk ke Email anda',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 120),
                  Container(
                    width: 350,
                    child: TextField(
                      controller: emailController,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        prefixIcon: Icon(Icons.email, color: Colors.black),
                        filled: true,
                        fillColor: Color(0xFFEFD9D9),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          handleKirim(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF13095D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20.0), // Mengubah ukuran border radius
                          ),
                          minimumSize:
                              Size(150, 50), // Mengubah ukuran minimum tombol
                        ),
                        child: Text('Kirim',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20)), // Mengubah ukuran font
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF13095D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20.0), // Mengubah ukuran border radius
                          ),
                          minimumSize:
                              Size(145, 50), // Mengubah ukuran minimum tombol
                        ),
                        child: Text('Kembali',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18)), // Mengubah ukuran font
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
