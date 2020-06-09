import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_wallet/Screens/CardInfoScreen.dart';
import 'package:flutter_mobile_app_wallet/Screens/HomeScreen.dart';
import 'package:flutter_mobile_app_wallet/Screens/PaymentScreen.dart';
import 'package:flutter_mobile_app_wallet/Screens/SendMoneyScreen.dart';
import 'package:flutter_mobile_app_wallet/Screens/TransactionsScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet UI',
      home: PaymentScreen(),
    );
  }
}
