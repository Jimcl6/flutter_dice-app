import 'package:flutter/material.dart';
import 'package:dice_app/bottom_appbar.dart';
import 'package:dice_app/dice_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                Colors.tealAccent.shade400,
                Colors.purple.shade300,
                Colors.deepPurple.shade900,
              ])),
          child: Scaffold(
            bottomNavigationBar: const BottomAppBarArea(),
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Center(
                child: Text(
                  'Dicee'.toUpperCase(),
                  style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                          color: Colors.white, fontSize: 25, letterSpacing: 5)),
                ),
              ),
            ),
            body: DicePage(),
          ),
        ),
      ),
    );
  }
}
