import 'package:flutter/material.dart';
import 'login_page.dart'; // Pastikan untuk mengimpor halaman Login
import 'package:liak_kuiz/home_page.dart'; // Pastikan untuk mengimpor halaman Home
import 'about_page.dart'; // Pastikan untuk mengimpor halaman About
import 'detail_order_page.dart'; // Pastikan untuk mengimpor halaman Detail Order

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank Sampah',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(), // Menampilkan halaman login saat aplikasi dibuka
    );
  }
}