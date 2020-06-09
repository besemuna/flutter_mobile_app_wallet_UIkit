import "package:flutter/material.dart";
import 'package:flutter_mobile_app_wallet/Icons/custom_icon_icons.dart';
import "../models/Transaction.dart";
import 'package:flutter_mobile_app_wallet/Widgets/BarChartWidget.dart';
import 'package:flutter_mobile_app_wallet/Widgets/TransactionWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionsScreen extends StatefulWidget {
  @override
  _TransactionsScreenState createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFCFF),
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
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
                        "Transactions",
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
                    height: 57,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              CustomIcon.down_arrow,
                              color: Color(0xff81C784),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Income",
                                  style: GoogleFonts.poppins(
                                    color: Color(0xffD3DDE5),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "\$45,345",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              CustomIcon.top_arrow,
                              color: Color(0xffFF5552),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Expense",
                                  style: GoogleFonts.poppins(
                                    color: Color(0xffD3DDE5),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "\$536",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 250,
              child: BarChartWidget(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 21,
                  color: Colors.black.withOpacity(.04),
                  offset: Offset(0,4)
                ),
              ]),
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: transactions.length,
                itemBuilder: (BuildContext context, int index) =>
                    Transactionwidget(
                  transaction: transactions[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
