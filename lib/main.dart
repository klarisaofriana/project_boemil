import 'package:flutter/material.dart';
import 'package:boemil_project/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BOEMIL',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: FirstOpen(),
    );
  }
}

class FirstOpen extends StatelessWidget {
  const FirstOpen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BOEMIL"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.89, 0.45),
            end: Alignment(0.89, -0.45),
            colors: [
              Color(0xFFFE9CBF),
              Color(0xFFFE9CBF),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 218.05,
                    height: 105,
                    child: Stack(
                      children: [
                        Positioned(
                          left: -10,
                          top: -85,
                          child: SizedBox(
                            width: 210,
                            height: 210,
                            child: Image.asset(
                              'assets/images/BOEMIL.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: 250,
                  height: 230,
                  child: Image.asset(
                    'assets/images/bumils.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 13, 9, 93),
                  minimumSize: Size(200, 50),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text(
                  "Lanjut",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
