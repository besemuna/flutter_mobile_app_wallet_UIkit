import "package:flutter/material.dart";

class OfferWidget extends StatelessWidget {
  final image;

  OfferWidget({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 204,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.10),
              blurRadius: 18,
              offset: Offset(0, 4))
        ],
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
