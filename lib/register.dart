import 'package:flutter/material.dart';
import 'package:boemil_project/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void handleRegistration() {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    print('Name: $name, Email: $email, Password: $password');
    // Add your registration logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
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
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        'assets/images/LOGO.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      controller: nameController,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Nama',
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        prefixIcon:
                            Icon(Icons.account_circle, color: Colors.black),
                        filled: true,
                        fillColor: Color(0xFFEFD9D9),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                  SizedBox(height: 20),
                  Container(
                    width: 350,
                    child: TextField(
                      controller: passwordController,
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Kata Sandi',
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        prefixIcon: Icon(Icons.lock, color: Colors.black),
                        filled: true,
                        fillColor: Color(0xFFEFD9D9),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        handleRegistration();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Pendaftaran Berhasil'),
                              actions: <Widget>[
                                ElevatedButton(
                                  child: Text('OK',
                                      style: TextStyle(color: Colors.white)),
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
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF13095D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child:
                          Text('Daftar', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Belum Punya Akun? '),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Masuk',
                          style: TextStyle(
                            color: Color(0xFF13095D),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
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
