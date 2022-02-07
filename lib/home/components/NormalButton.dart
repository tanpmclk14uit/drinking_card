import 'package:flutter/material.dart';
import '../../constraint.dart';

class HomeButton extends StatelessWidget {
  final Widget icon;
  final String label;

  const HomeButton(this.icon, this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton.extended(
        onPressed: () => {},
        icon: icon,
        foregroundColor: primaryTextColor,
        label: Text(
          label,
          style: const TextStyle(
            fontFamily: "Facebook",
            fontSize: 21,
            fontWeight: FontWeight.normal,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      height: 50,
      margin: homeButtonMargin
    );
  }
}
