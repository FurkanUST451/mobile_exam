import 'package:flutter/material.dart';
import 'package:furkanberkusta_030722042/drawer/drawer.dart';
import 'package:furkanberkusta_030722042/sayfalar/kurslarsayfasi.dart';
import 'package:furkanberkusta_030722042/sayfalar/profil.dart';
import 'package:furkanberkusta_030722042/sayfalar/takvim.dart';

class Yigin extends StatefulWidget {
  const Yigin({super.key});

  @override
  State<Yigin> createState() => _YiginState();
}

class _YiginState extends State<Yigin> {
  int _seciliIndis = 0;

  final List<String> _basliklar = [
    "Kurslarım",
    "Takvim",
    "Profil",
  ];

  final List<Widget> _sayfalar = [
    const Kurslar(),
    const Takvim(),
    const Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_basliklar[_seciliIndis]),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      drawer: const Drawer1(),
      body: IndexedStack(
        index: _seciliIndis,
        children: _sayfalar,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seciliIndis,
        onTap: (index) {
          setState(() {
            _seciliIndis = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Kurslar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Takvim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}