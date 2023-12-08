import 'package:flutter/material.dart';
import 'package:ujicoba_boemil/artikel_admin/artikel_utama/sunting_artikel.dart';

class ArtikelItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String content;
  final VoidCallback? onTap;

  ArtikelItem({
    required this.imageUrl,
    required this.title,
    required this.content,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFFC2D9),
          borderRadius: BorderRadius.circular(10.41),
          boxShadow: [
            BoxShadow(
              color: const Color(0x33000000),
              blurRadius: 12,
              offset: Offset(0, 0),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 92,
                height: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/uploads.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      content,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    // Tombol Icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            print('Edit pressed');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SuntingArtikelBoemil();
                                },
                              ),
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            // Add your delete action here
                            print('Delete pressed');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
