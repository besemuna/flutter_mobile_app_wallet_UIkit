import "package:flutter/material.dart";
import 'package:flutter_mobile_app_wallet/Icons/custom_icon_icons.dart';
import 'package:flutter_mobile_app_wallet/Models/Contact.dart';
import 'package:flutter_mobile_app_wallet/Widgets/ContactWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class SendMoneyScreen extends StatefulWidget {
  @override
  _SendMoneyScreenState createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFCFF),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            ListView(
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
                        children: [
                          Icon(
                            CustomIcon.back_arrow,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 28,
                          ),
                          Text(
                            "Send Money",
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Spacer(
                            flex: 2,
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
                        height: 35,
                      ),
                      Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        child: Row(
                          children: [
                            Icon(
                              CustomIcon.search,
                              color: Color(0xff929B9F),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search a person or business",
                                    hintStyle: GoogleFonts.poppins(
                                        color: Color(0xff929BA1),
                                        fontWeight: FontWeight.w500),
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(0)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 31,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Contacts",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Color(0xff3F3F3F),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 12),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              blurRadius: 21,
                              color: Colors.black.withOpacity(.02),
                              offset: Offset(0, 4))
                        ]),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: contacts.length,
                          itemBuilder: (BuildContext context, int index) =>
                              ContactWidget(
                            contact: contacts[index],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
            Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Align(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 23, vertical: 20),
                    decoration: BoxDecoration(
                        color: Color(0xff7472DE),
                        borderRadius: BorderRadius.circular(500),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 25,
                            color: Colors.black.withOpacity(.25),
                            offset: Offset(0,3)
                          )
                        ]),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(CustomIcon.scan, color: Colors.white),
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          "Scan QR Code",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
