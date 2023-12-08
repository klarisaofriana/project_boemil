import 'package:flutter/material.dart';
import '/main.dart';

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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 16),
      Row(
        children: [
          Expanded(
            child: buildTextContainer(
                'Selamat Datang\n', 17, FontWeight.w500, 400, 33),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
            child: Text('KELUAR'),
          ),
        ],
      ),
      buildTextContainer('\n\nAdmin!', 22, FontWeight.w800, 400, 33),
    ]);
  }

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
