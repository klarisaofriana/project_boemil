import 'package:flutter/material.dart';
import 'register.dart';
import 'lupa_kata_sandi.dart';
import 'artikel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? selectedRole = 'Pengguna';

  List<String> roles = ['Pengguna', 'Admin'];

  void handleLogin(BuildContext context) {
    String username = usernameController.text;
    String role = selectedRole!;
    print('Username: $username, Role: $role');
    // Add your login logic here

    // Show validation success dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Berhasil'),
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
                if (role == 'Pengguna') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArtikelPage(),
                    ),
                  );
                } else if (role == 'Admin') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminLogin(username: username),
                    ),
                  );
                }
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
        title: Text('Login'),
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
                      controller: usernameController,
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
                  SizedBox(height: 20),
                  Container(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Pilih Sebagai',
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        filled: true,
                        fillColor: Color(0xFFEFD9D9),
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.person, color: Colors.black),
                        suffixIcon: DropdownButton<String>(
                          value: selectedRole,
                          onChanged: (value) {
                            setState(() {
                              selectedRole = value;
                            });
                          },
                          items: roles.map((role) {
                            return DropdownMenuItem(
                              value: role,
                              child: Text(role),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        handleLogin(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF13095D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child:
                          Text('Masuk', style: TextStyle(color: Colors.white)),
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
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Daftar',
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
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LupaKataSandiPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Lupa Kata Sandi?',
                      style: TextStyle(
                        color: Color(0xFF13095D),
                      ),
                    ),
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

class UserLogin extends StatelessWidget {
  final String username;

  UserLogin({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Pengguna'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Selamat datang, $username!'),
            Text('Peran: User'),
          ],
        ),
      ),
    );
  }
}

class AdminLogin extends StatelessWidget {
  final String username;

  AdminLogin({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Admin'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Selamat datang, $username!'),
            Text('Peran: Admin'),
          ],
        ),
      ),
    );
  }
}
