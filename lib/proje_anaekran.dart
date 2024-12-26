import 'package:flutter/material.dart';
import 'package:teknofest_proje/proje_chat.dart'; // chat sayfası için import
import 'dart:ui';
import 'package:teknofest_proje/proje_renkler.dart'; // renkler için import

class TarimBilHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Arka plan resmi
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("resimler/Photo & Art Print Crop, Zoran Zeremski.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blur efekti
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
            child: Container(
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Başlık
                  Text(
                    "TarımBil",
                    style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 36,
                      color: yazi_renk1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  // Hoşgeldiniz (username) kısmı
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ana_renk.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "Hoşgeldiniz (username)",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: yazi_renk1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Geçmiş Konuşmalar kısmı
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ana_renk.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "Geçmiş Konuşmalar",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: yazi_renk2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Yapay Zeka ile Konuşma Alanı kısmı
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TarimBilChatPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ana_renk.withOpacity(0.7), // Buton rengi
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: Center(
                      child: Text(
                        "Yapay Zeka ile Konuşma Alanı",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: yazi_renk2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
