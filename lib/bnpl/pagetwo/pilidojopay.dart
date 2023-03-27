import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PiliDojoPay extends StatelessWidget {
  const PiliDojoPay({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
              'Pay with Dojo',
              style: GoogleFonts.prompt(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            );
  }
}