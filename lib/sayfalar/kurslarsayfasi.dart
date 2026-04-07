import 'package:flutter/material.dart';
import 'package:furkanberkusta_030722042/kartlar/kursmodeli.dart';

import '../kartlar/kurskarti.dart';

class Kurslar extends StatelessWidget {
  const Kurslar({super.key});

  @override
  // Bu kısımda eklenecek kartların verileri bir listede toplanığ index olarak çekmektedir.
  Widget build(BuildContext context) {
    final List<KursModeli> kurslarListesi = [
      const KursModeli(KursAdi: "Mobil Uygulama Geliştirme", EgitmenAdi: "Dr. Hakan GENÇOĞLU", IlerlemeOrani: 0.65, KursIkonu: Icons.face),
      const KursModeli(KursAdi: "Nesne Yönelimli Programlama", EgitmenAdi: "Dr. Volkan ÇETİN", IlerlemeOrani: 0.40, KursIkonu: Icons.code),
      const KursModeli(KursAdi: "Veri Yapıları ve Algoritmalar", EgitmenAdi: "Dr. Cevat REŞİT", IlerlemeOrani: 0.85, KursIkonu: Icons.account_tree),
      const KursModeli(KursAdi: "Veritabanı Yönetim Sistemleri", EgitmenAdi: "Dr. Hakan GENÇOĞLU", IlerlemeOrani: 0.20, KursIkonu: Icons.storage),
      const KursModeli(KursAdi: "Yapay Zekaya Giriş", EgitmenAdi: "Dr. Sahra Tilki", IlerlemeOrani: 0.10, KursIkonu: Icons.storage),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.5,
          ),
          itemCount: kurslarListesi.length,
          itemBuilder: (context, index) {
            return KursKarti(Kursverisi: kurslarListesi[index]);
          },
        ),
      ),
    );
  }
}
