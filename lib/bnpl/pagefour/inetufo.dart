import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';
import 'package:saccoapp/bnpl/pagefour/paymentcolumn.dart';

import 'amounttext.dart';
import 'dateinne.dart';

class IneTufo extends StatelessWidget {
  const IneTufo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      return  Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PaymentColumn(),
                  DateInne(),
                  Column(
                    children: [
                      AmountText(),
                      Text(
                        'Ksh ${(namba * 1.24).toStringAsFixed(0)}',
                        style: GoogleFonts.prompt(
                            fontWeight: FontWeight.w600, color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
            );
    });
  }
}