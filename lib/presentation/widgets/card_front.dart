import 'package:drinking_card/enums.dart';
import 'package:drinking_card/presentation/widgets/title.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

import '../../constraint.dart';

class CardFront extends StatelessWidget {
  const CardFront({
    Key? key,
    required this.content,
    required this.type,
  }) : super(key: key);
  final String content;
  final CardType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          type == CardType.action
              ? SvgPicture.asset("assets/cards/action_front.svg")
              : SvgPicture.asset("assets/cards/truth_front.svg"),
          const Positioned(
            left: 0,
            right: 0,
            top: 50,
            child: AppTitleInCard(),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 45,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "ACTION",
                  style: type == CardType.action
                      ? buttonTextStyle.copyWith(color: actionCardColor)
                      : buttonTextStyle.copyWith(color: truthCardColor),
                ),
              )),
          Positioned(
              left: 20,
              right: 20,
              top: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  content,
                  style: TextStyle(
                      fontFamily: "Facebook",
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: type == CardType.action
                          ? actionCardColor
                          : truthCardColor),
                  textAlign: TextAlign.center,
                ),
              ))
        ],
      ),
    );
  }
}
