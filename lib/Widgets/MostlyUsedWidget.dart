import "package:flutter/material.dart";
import 'package:flutter_mobile_app_wallet/Models/MostlyUsed.dart';
import 'package:google_fonts/google_fonts.dart';

class MostlyUsedWidget extends StatelessWidget {
  final MostlyUsed mostlyUsed;
  MostlyUsedWidget({this.mostlyUsed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Color(0xffF1F3F6), width: 1),
        ),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Image.asset(mostlyUsed.profile),
            ),
          ),
          SizedBox(
            width: 19,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mostlyUsed.primary,
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: Color(0xff424242),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                mostlyUsed.seconday,
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: Color(0xff424242),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
