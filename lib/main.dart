import 'package:flutter/material.dart';
import 'package:flutter_catalogue/screens/bottom_bar.dart';
import 'package:flutter_catalogue/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ticket Booking App",
      home: BottomBar(),
    );
  }
}