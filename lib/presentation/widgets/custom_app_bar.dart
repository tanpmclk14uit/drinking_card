import 'package:flutter/material.dart';

import '../../constraint.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.previousCardCount,
  }) : super(key: key);

  final int previousCardCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            children: <Widget>[
              Icon(Icons.arrow_back_ios, color: primaryTextColor, size: 20,),
              Text("Trở về", style: buttonTextStyle,)
            ],
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Thẻ trước ($previousCardCount)",
              style: buttonTextStyle,
            ))
      ],
    );
  }
}
