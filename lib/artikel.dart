import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    home: ArtikelPage(),
  ));
}

class ArtikelPage extends StatefulWidget {
  @override
  _ArtikelPageState createState() => _ArtikelPageState();
}

class _ArtikelPageState extends State<ArtikelPage> {
  int _selectedIndex = 0;

  void handleLogin(BuildContext context) {
    bool isAuthenticated = true;

    if (isAuthenticated) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DashboardPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Dashboard'),
            GestureDetector(
              onTap: () {
                handleLogin(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 10.0),
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/images/AppbarProfil.png'), // Pastikan path ke gambar benar
                  ),
                ),
              ),
            ),
          ],
        ),
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
          child: _navBarItems[_selectedIndex].title,
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: _navBarItems,
        selectedItemColor: Color(0xFF6BC3F4), // Ubah warna item yang dipilih
        unselectedItemColor: Colors.black, // Ubah warna item yang tidak dipilih
        backgroundColor: Color(0xFF6BC3F4), // Ubah warna latar belakang
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Text('Halaman Dashboard'),
      ),
    );
  }
}

final _navBarItems = [
  SalomonBottomBarItem(
    icon: Icon(Icons.home),
    title: Text("Artikel"),
    selectedColor: Colors.white,
  ),
  SalomonBottomBarItem(
    icon: Icon(Icons.schedule),
    title: Text("Jadwal Periksa"),
    selectedColor: Colors.white,
  ),
  SalomonBottomBarItem(
    icon: Icon(Icons.bar_chart_outlined),
    title: Text("Ukuran Janin"),
    selectedColor: Colors.white,
  ),
  SalomonBottomBarItem(
    icon: Icon(Icons.monitor_weight_outlined),
    title: Text("Berat Saya"),
    selectedColor: Colors.white,
  ),
];
