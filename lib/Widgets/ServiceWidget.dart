import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class ServiceWidget extends StatelessWidget {
  final text;
  final background;
  final icon;

  ServiceWidget({this.text, this.background, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 61,
          width: 61,
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(500),
          ),
          child: Center(
            child: icon,
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(0xff3F3F3F)
          ),
        )
      ],
    );
  }
}


class ServiceWidgetTwo extends StatelessWidget {
  final text;
  final background;
  final icon;

  ServiceWidgetTwo({this.text, this.background, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 61,
          width: 61,
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(500),
          ),
          child: Center(
            child: icon,
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(0xff3F3F3F)
          ),
        )
      ],
    );
  }
}