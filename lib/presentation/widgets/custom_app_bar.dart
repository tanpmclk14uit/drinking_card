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
        FloatingActionButton.extended(
          extendedPadding: EdgeInsets.zero,
          heroTag: "back",
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: primaryTextColor,
            size: 20,
          ),
          label: Text(
            "Trở về",
            style: buttonTextStyle,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
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
