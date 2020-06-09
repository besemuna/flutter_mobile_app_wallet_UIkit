import 'package:flutter/material.dart';

class CreditCard {
  final balance;
  final lastNumbers;
  final cardHolder;
  final expires;
  final List<Color> colors;

  CreditCard(
      {this.balance,
      this.lastNumbers,
      this.cardHolder,
      this.expires,
      this.colors});
}

List<CreditCard> cards = [
  CreditCard(
    balance: "18,240",
    lastNumbers: 1289,
    cardHolder: "THOMAS CULLEN",
    expires: "09/22",
    colors: [
      Color(0xff2CB488),
      Color(0xff209D92),
    ],
  ),
  CreditCard(
    balance: "18,240",
    lastNumbers: 1289,
    cardHolder: "ATIQUR RAHAMAN",
    expires: "09/24",
    colors: [Color(0xff4A27F3), Color(0xff444BB1)],
  ),
  CreditCard(
    balance: "18,240",
    lastNumbers: 1289,
    cardHolder: "MARK BROWN",
    expires: "09/24",
    colors: [
      Color(0xffFF6767),
      Color(0xffFF8585),
    ],
  ),
];
