import 'package:flutter/material.dart';
import 'dart:ui';// Blur efekti için
import 'package:teknofest_proje/proje_renkler.dart';


class OdevAnasayfa extends StatefulWidget {
  const OdevAnasayfa({super.key});

  @override
  State<OdevAnasayfa> createState() => _OdevAnasayfaState();
}

class _OdevAnasayfaState extends State<OdevAnasayfa> {
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
                image: AssetImage("resimler/Photo & Art Print Crop, Zoran Zeremski.jpg"), // Resmin yolu
                fit: BoxFit.cover, // Resmin tüm alanı kaplamasını sağlar
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0), // Bulanıklık derecesi
            child: Container(
              color: Colors.black.withOpacity(0), // Şeffaf katman
            ),
          ),
          Center(
            child: Container(
              width: 500, // Kutu genişliği
              height: 300, // Kutu yüksekliği
              decoration: BoxDecoration(
                color: ana_renk.withOpacity(0.5), // Opaklık %50
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Hoşgeldiniz.",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: yazi_renk2, // Yazı rengini yazi_renk1 olarak ayarladım
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Kullanıcı Adı Giriniz',
                      hintStyle: TextStyle(color: yazi_renk2,fontSize: 18), // Placeholder metni rengi
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Şifre Giriniz',
                      hintStyle: TextStyle(color: yazi_renk2,fontSize: 18), // Placeholder metni rengi
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Giriş Yap butonu
                      ElevatedButton(
                        onPressed: () {
                          print("Giriş Yapıldı!");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ana_renk, // Butonun arka plan rengi
                          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                        ),
                        child: const Text(
                          "Giriş Yap",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white, // Buton yazı rengi
                          ),
                        ),
                      ),
                      // Şifremi Unuttum yazısı
                      TextButton(
                        onPressed: () {
                          print("Şifremi Unuttum tıklandı!");
                        },
                        child: const Text(
                          "Şifremi Unuttum",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue, // Şifremi Unuttum yazısının rengi
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