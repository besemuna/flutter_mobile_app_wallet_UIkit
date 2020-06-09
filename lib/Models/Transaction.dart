import 'package:flutter/material.dart';

class Transaction {
  final primary;
  final seconday;
  final bool type;
  final amount;
  final icon;
  final background;
  final width;

  Transaction({
    this.primary,
    this.seconday,
    this.type,
    this.amount,
    this.icon,
    this.background,
    this.width
  });
}

List<Transaction> transactions = [
  Transaction(
    icon: "assets/images/dribble.png",
    primary: "Dribble Inc",
    seconday: "Payment",
    type: false,
    amount: 45,
    background: Color(0xffFFE9EF),
    width: 28
  ),
  Transaction(
    icon: "assets/images/spotify.png",
    primary: "Spotify Family",
    seconday: "Payment",
    type: true,
    amount: 163,
    background: Color(0xffE2FBED),
    width: 28
  ),
  Transaction(
    icon: "assets/images/netflix.png",
    primary: "Netflix",
    seconday: "Payment",
    type: false,
    amount: 15,
    background: Color(0xffE9E9E9),
    width: 15
  ),
  Transaction(
    icon: "assets/images/uber.png",
    primary: "Uber",
    seconday: "Payment",
    type: false,
    amount: 35,
    background: Color(0xffE9E9E9),
    width: 27
  ),
];
