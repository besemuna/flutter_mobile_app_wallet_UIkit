import "package:flutter/material.dart";
import 'package:flutter_mobile_app_wallet/Models/Card.dart';
import "../models/Transaction.dart";
import 'package:flutter_mobile_app_wallet/Widgets/CreditCardWidget.dart';
import "../Widgets/TransactionWidget.dart";
import 'package:google_fonts/google_fonts.dart';
import "../Icons/custom_icon_icons.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller = PageController(viewportFraction: 0.85);
  final _cards = cards;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFCFF),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 62,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "Your Wallet",
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage("assets/images/profile.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 39,
            ),
            Container(
              height: 202,
              child: PageView(
                controller: _controller,
                children: [
                  CreditCardWidget(card: _cards[0]),
                  CreditCardWidget(card: _cards[1]),
                  CreditCardWidget(card: _cards[2]),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions",
                          style: GoogleFonts.poppins(
                              color: Color(0xff3F3F3F), fontSize: 16),
                        ),
                        Icon(
                          CustomIcon.right_arrow,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: transactions.length,
                    itemBuilder: (BuildContext context, int index) =>
                        Transactionwidget(
                      transaction: transactions[index],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
