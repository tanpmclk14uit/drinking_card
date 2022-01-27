import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constraint.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            height: 3.8,
            width: 50,
            decoration: BoxDecoration(
                color: primaryTextColor,
                borderRadius: BorderRadius.circular(5))),
        const Text(
          "Card game",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Montserrat",
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
        ),
        Text(
          "DRINKING",
          style: TextStyle(
              color: primaryTextColor,
              fontFamily: "Montserrat",
              fontSize: 45,
              fontWeight: FontWeight.w900),
        ),
        Container(
          height: 3.8,
          width: 50,
          decoration: BoxDecoration(
              color: primaryTextColor, borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }
}
