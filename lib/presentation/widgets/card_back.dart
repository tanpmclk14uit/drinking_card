import 'package:drinking_card/enums.dart';
import 'package:drinking_card/presentation/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constraint.dart';

class CardBack extends StatelessWidget {
  const CardBack({Key? key, required this.type}) : super(key: key);
  final CardType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(children: <Widget>[
        type == CardType.action
            ? SvgPicture.asset("assets/cards/action_back.svg")
            : SvgPicture.asset("assets/cards/truth_back.svg"),
        Positioned(
          left: 0,
          right: 0,
          bottom: 40,
          child: Container(
            alignment: Alignment.center,
            child: Text("Chạm để mở",
                style: buttonTextStyle.copyWith(color: Colors.white)),
          ),
        ),
        Positioned(
          child:
              Container(alignment: Alignment.center, child: const AppTitle()),
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
        ),
      ]),
    );
  }
}
