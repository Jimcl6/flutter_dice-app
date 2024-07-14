import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomAppBarArea extends StatelessWidget {
  const BottomAppBarArea({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      child: Center(
        child: RichText(
          text: TextSpan(
            text: 'qwerty '.toLowerCase(),
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                color: Colors.orange,
                fontSize: 20,
                letterSpacing: 4,
              ),
            ),
            children: [
              TextSpan(
                text: 'site',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 20,
                    letterSpacing: 4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
