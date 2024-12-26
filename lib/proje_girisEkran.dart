import 'package:flutter/material.dart';
import 'package:teknofest_proje/proje_girisyap.dart';
import 'package:teknofest_proje/proje_kayitol.dart';
import 'dart:ui';// Blur efekti için
import 'package:teknofest_proje/proje_renkler.dart';


class ProjeGirisEkran extends StatefulWidget {
  const ProjeGirisEkran({super.key});

  @override
  State<ProjeGirisEkran> createState() => _ProjeGirisEkranState();
}

class _ProjeGirisEkranState extends State<ProjeGirisEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.8),
          child: Text(
            "TarımBil",
            style: TextStyle(
              fontFamily: "pacifico",
              color: yazi_renk1,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: ana_renk,
        centerTitle: true,
      ),
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
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
          Center(
            child: Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                color: ana_renk.withOpacity(0.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      "Hoşgeldiniz",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: yazi_renk2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProjeGiris(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ana_renk,
                          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                        ),
                        child: const Text(
                          "Giriş Yap",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProjeKayitol(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ana_renk,
                          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                        ),
                        child: const Text(
                          "Kayıt ol",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
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