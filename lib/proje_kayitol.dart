import 'package:flutter/material.dart';
import 'dart:ui'; // Blur efekti için
import 'package:teknofest_proje/proje_renkler.dart';

class ProjeKayitol extends StatefulWidget {
  const ProjeKayitol({super.key});

  @override
  State<ProjeKayitol> createState() => _ProjeKayitolState();
}

class _ProjeKayitolState extends State<ProjeKayitol> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  String? _errorMessage;

  void _register() {
    setState(() {
      if (_passwordController.text != _confirmPasswordController.text) {
        _errorMessage = "Şifreler eşleşmiyor!";
      } else {
        _errorMessage = null;
        print("Kayıt Olunuyor...");
        // Kayıt işlemleri burada yapılabilir.
      }
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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
              height: 400,
              decoration: BoxDecoration(
                color: ana_renk.withOpacity(0.5),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "Hoşgeldiniz.",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: yazi_renk2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'E-posta Giriniz',
                      hintStyle: TextStyle(color: yazi_renk2, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Şifre Giriniz',
                      hintStyle: TextStyle(color: yazi_renk2, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Şifrenizi Doğrulayınız',
                      hintStyle: TextStyle(color: yazi_renk2, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (_errorMessage != null)
                    Text(
                      _errorMessage!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _register,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ana_renk,
                      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                    ),
                    child: const Text(
                      "Kayıt Ol",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
