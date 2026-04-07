import 'package:flutter/material.dart';
import 'kursmodeli.dart';

// --- ÖZEL KURS KARTI WIDGET'I ---
class KursKarti extends StatelessWidget {
  final KursModeli Kursverisi;

  const KursKarti({super.key, required this.Kursverisi});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        child: Row(
          children: [
            // İkon Bölümü
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color(0xFF2E3B4E).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(Kursverisi.KursIkonu, color: const Color(0xFF2E3B4E), size: 18),
            ),
            const SizedBox(width: 8),
            // Metin Bilgileri ve İlerleme
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Kursverisi.KursAdi,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    Kursverisi.EgitmenAdi,
                    style: const TextStyle(color: Colors.grey, fontSize: 9),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          value: Kursverisi.IlerlemeOrani,
                          backgroundColor: Colors.grey[200],
                          color: const Color(0xFF5C6BC0),
                          minHeight: 3,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "%${(Kursverisi.IlerlemeOrani * 100).toInt()}",
                        style: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
