import 'package:flutter/material.dart';
import 'package:furkanberkusta_030722042/kartlar/indexedstack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ara Sınav Projesi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      initialRoute: '/',
      // Bu kısımda ana routa a aktarıp oradan index değişimi ile bottomNavigation ile sayfalar arası geçiş sağlanmaktadır.
      routes: {
        '/': (context) => const Yigin(),
      },
    );
  }
}