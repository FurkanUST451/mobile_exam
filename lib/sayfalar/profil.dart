import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //Buradaki SafeArea widgetini metinler ekran dışına çıkmaması için yapılmıştır.
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person, size: 40),
                ),
              ),
              SizedBox(height: 50),
              Text("Ad : Furkan Berk Usta", style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text(
                "Bölüm: Yazılım Mühendisliği",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
