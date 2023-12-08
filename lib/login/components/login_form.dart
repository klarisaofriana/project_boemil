import 'package:flutter/material.dart';
//import '/login/components/already_have_an_account_check.dart';
import '/constans/colors2.dart';
//import '../../register/register_screen.dart';
import '../../artikel_admin/artikel_utama/artikel_page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kWhiteColor,
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: const TextStyle(color: Color(0xFFFD71AE)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFD71AE)),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _passwordController,
            textInputAction: TextInputAction.done,
            obscureText: true,
            cursorColor: kWhiteColor,
            decoration: InputDecoration(
              labelText: "Kata Sandi",
              labelStyle: TextStyle(color: Color(0xFFFD71AE)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFFD71AE)),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 360,
            height: 21,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Lupa kata sandi ?',
                style: TextStyle(
                  color: Color(0xFF5890FF),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                  letterSpacing: 0.12,
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String password = _passwordController.text;

                print('Email: $email');
                print('Password: $password');

                // Panggil metode untuk pindah ke halaman artikel
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ArtikelUtama();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                'Masuk'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          //const SizedBox(height: 20),
          /*   AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RegisterScreen();
                  },
                ),
              );
            },
          ), */
        ],
      ),
    );
  }
}
