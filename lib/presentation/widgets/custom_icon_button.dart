import 'package:flutter/material.dart';

import '../../constraint.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {

  Widget icon;
  String content;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        icon,
        const SizedBox(width: 10),
        Text(
          content,
          style: buttonTextStyle,
        )
      ],
    );
  }

  CustomIconButton(this.icon, this.content, {Key? key}) : super(key: key);
}
