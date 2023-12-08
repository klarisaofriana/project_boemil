//import 'package:boemil_mobile/screens/dashboard/artikel_pengguna/widgets/profile_pengguna.dart';
import 'package:flutter/material.dart';
/* import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'jadwal_page.dart';
import 'ukuran_janin_page.dart';
import 'berat_saya_page.dart'; */
import 'package:ujicoba_boemil/artikel_admin/artikel_utama/artikel_page.dart';

class ArtikelBumilUtama extends StatefulWidget {
  @override
  _ArtikelBumilUtamaState createState() => _ArtikelBumilUtamaState();
}

class _ArtikelBumilUtamaState extends State<ArtikelBumilUtama> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Scaffold(
        bottomNavigationBar: TombolMenu(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    switch (_selectedIndex) {
      case 0:
        return _buildArtikelAppBar(context);
      /*case 1:
        return _buildJadwalAppBar(context);
      case 2:
        return _buildUkuranJaninAppBar(context);
      case 3:
        return _buildBeratSayaAppBar(context);*/
      default:
        return _buildArtikelAppBar(context);
    }
  }

  PreferredSizeWidget _buildArtikelAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
        title: Text(
          'Artikel',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFF5F5F5),
        automaticallyImplyLeading: false,
        /*  actions: [
          if (_selectedIndex == 0)
            InkWell(
              onTap: () {
                // Navigate to the profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePengguna()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/icon_profil1.png'),
                ),
              ),
            ),
        ], */
      ),
    );
  }

// Kembali ke halaman lain
  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return ArtikelUtama();
      /*case 1:
        return JadwalPage();
      case 2:
        return UkuranJaninPage();
      case 3:
        return BeratSayaPage();*/
      default:
        return ArtikelUtama();
    }
  }

  PreferredSizeWidget _buildJadwalAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
        title: Text(
          'Jadwal Periksa',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFF5F5F5),
        automaticallyImplyLeading: false,
        // Add actions or buttons as needed for the page
      ),
    );
  }

  PreferredSizeWidget _buildUkuranJaninAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
        title: Text(
          'Ukuran Janin',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFF5F5F5),
        automaticallyImplyLeading: false,
        // Add actions or buttons as needed for the page
      ),
    );
  }

  PreferredSizeWidget _buildBeratSayaAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
        title: Text(
          'Berat Saya',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFF5F5F5),
        automaticallyImplyLeading: false,
        // Add actions or buttons as needed for the page
      ),
    );
  }
}

//Tombol Menu
class TombolMenu extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  TombolMenu({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 83,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavItem(Icons.home, "Artikel", 0, showProfile: true),
          _buildNavItem(Icons.schedule, "Jadwal Periksa", 1),
          _buildNavItem(Icons.bar_chart_outlined, "Ukuran Janin", 2),
          _buildNavItem(Icons.monitor_weight_outlined, "Berat Saya", 3),
        ],
      ),
    );
  }

//Pewarnaan
  Widget _buildNavItem(IconData icon, String title, int index,
      {bool showProfile = false}) {
    return InkWell(
      onTap: () {
        onTap(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                icon,
                color: currentIndex == index
                    ? Color(0xFFFF71A4)
                    : Color(0xFFFF71A4), // Change to your default color
              ),
              if (currentIndex == index)
                Positioned(
                  top: 0,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFF71A4),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 6),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color:
                  currentIndex == index ? Color(0xFFFF71A4) : Color(0xFFFF71A4),
            ),
          ),
        ],
      ),
    );
  }
}
