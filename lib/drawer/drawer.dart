import 'package:flutter/material.dart';
import 'package:furkanberkusta_030722042/ayarlar/ayarlarsayfasi.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Text(
              "Ara Sınav Projesi",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ListTile(
              tileColor: Colors.grey.shade300,
              leading: const Icon(Icons.settings, color: Color(0xFF454545)), // Koyu gri ikon
              title: const Text(
                "Ayarlar",
                style: TextStyle(color: Color(0xFF454545), fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AyarlarSayfasi()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}