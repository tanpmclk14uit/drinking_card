import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constraint.dart';

class SpecialButton extends StatelessWidget {
  const SpecialButton({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                offset: const Offset(0, 4),
                blurRadius: 10,
              ),
            ],
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          children: <Widget>[
            SvgPicture.asset("assets/icons/special_icon.svg"),
            const SizedBox(width: 10),
            Text(
              content,
              style: TextStyle(
                  color: specialButtonText,
                  fontSize: 21,
                  fontFamily: "Facebook"),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ));
  }
}
