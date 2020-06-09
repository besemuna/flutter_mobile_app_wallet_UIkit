import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "../Models/Card.dart";

class CreditCardWidget extends StatelessWidget {
  final CreditCard card;

  CreditCardWidget({this.card});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: card.colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Balance",
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Color(0xffD3DDE5)),
                  ),
                  Text(
                    "\$${card.balance}",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Image(
                image: AssetImage(
                  "assets/images/visa_logo.png",
                ),
                height: 16,
              )
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "****",
                style: TextStyle(
                  fontFamily: "Ocra",
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                "****",
                style: TextStyle(
                  fontFamily: "Ocra",
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                "****",
                style: TextStyle(
                  fontFamily: "Ocra",
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                "${card.lastNumbers}",
                style: TextStyle(
                  fontFamily: "Ocra",
                  color: Colors.white,
                  fontSize: 20,
                ),
              )
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "CARD HOLDER",
                style: TextStyle(
                  color: Color(0xffD3DDE5),
                  fontFamily: "Ocra",
                  fontSize: 11,
                ),
              ),
              Text(
                "EXPIRES",
                style: TextStyle(
                  color: Color(0xffD3DDE5),
                  fontFamily: "Ocra",
                  fontSize: 11,
                ),
              )
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                card.cardHolder,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Ocra",
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                card.expires,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Ocra",
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
