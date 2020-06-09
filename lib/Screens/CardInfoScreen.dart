import "package:flutter/material.dart";
import 'package:flutter_mobile_app_wallet/Icons/custom_icon_icons.dart';
import 'package:flutter_mobile_app_wallet/Widgets/OfferWidget.dart';
import 'package:flutter_mobile_app_wallet/Widgets/ServiceWidget.dart';
import 'package:flutter_mobile_app_wallet/Widgets/ShoppingWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class CardInfoScreen extends StatefulWidget {
  @override
  _CardInfoScreenState createState() => _CardInfoScreenState();
}

class _CardInfoScreenState extends State<CardInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                gradient: LinearGradient(colors: [
                  Color(0xff4A27F3),
                  Color(0xff444BB1),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.35),
                      blurRadius: 3,
                      offset: Offset(0, 1)),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 69),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        CustomIcon.back_arrow,
                        color: Colors.white,
                      ),
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage("assets/images/profile.png"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Balance",
                    style: GoogleFonts.poppins(
                        fontSize: 13, color: Color(0xffD3DDE5)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "\$18,240",
                    style: GoogleFonts.poppins(
                        fontSize: 33,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 13,
                  ),
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
                        "1289",
                        style: TextStyle(
                          fontFamily: "Ocra",
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Services",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Color(0xff3F3F3F),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ServiceWidget(
                        text: "Send",
                        background: Color(0xffE9EFFC),
                        icon: Icon(
                          CustomIcon.top_arrow,
                          color: Color(0xff608DE2),
                        ),
                      ),
                      ServiceWidget(
                        text: "Request",
                        background: Color(0xffE8F6F3),
                        icon: Icon(
                          CustomIcon.down_arrow,
                          color: Color(0xff58CB98),
                        ),
                      ),
                      ServiceWidget(
                        text: "Recharge",
                        background: Color(0xffFBEBEE),
                        icon: Icon(
                          CustomIcon.right_arrow,
                          color: Color(0xffFB6969),
                        ),
                      ),
                      ServiceWidget(
                        text: "Payment",
                        background: Color(0xffEBECFF),
                        icon: Icon(
                          CustomIcon.cash,
                          color: Color(0xff7373FF),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 41,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Offers",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color(0xff3F3F3F),
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        CustomIcon.right_arrow,
                        size: 15,
                        color: Color(0xff37474F),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 105,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        OfferWidget(
                          image: "assets/images/offer_one.png",
                        ),
                        OfferWidget(
                          image: "assets/images/offer_two.png",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 53,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shopping",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color(0xff3F3F3F),
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        CustomIcon.right_arrow,
                        size: 15,
                        color: Color(0xff37474F),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 105,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ShoppingWidget(
                          image: "assets/images/shopping_one.png",
                        ),
                        ShoppingWidget(
                          image: "assets/images/shopping_two.png",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
