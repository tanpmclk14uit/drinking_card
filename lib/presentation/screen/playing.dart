import 'dart:math';
import 'package:drinking_card/constraint.dart';
import 'package:drinking_card/enums.dart';
import 'package:drinking_card/presentation/widgets/card_back.dart';
import 'package:drinking_card/presentation/widgets/card_front.dart';
import 'package:drinking_card/presentation/widgets/custom_app_bar.dart';
import 'package:drinking_card/presentation/widgets/special_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlayingScreen extends StatefulWidget {
  const PlayingScreen({Key? key, required this.previousCardCount})
      : super(key: key);
  final int previousCardCount;

  @override
  _PlayingScreenState createState() => _PlayingScreenState();
}

class _PlayingScreenState extends State<PlayingScreen> {
  double angle = pi;
  bool isFlipped = false;

  void _flip() {
    setState(() {
      if (!isFlipped) {
        angle = (angle + pi) % (2 * pi);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomAppBar(previousCardCount: widget.previousCardCount),
              Expanded(
                  child: GestureDetector(
                onTap: _flip,
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: pi, end: angle),
                  duration: const Duration(seconds: 1),
                  builder: (context, double value, child) {
                    if (value >= (pi / 2)) {
                      isFlipped = false;
                    } else {
                      isFlipped = true;
                    }
                    return (Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(value),
                        child: isFlipped == true
                            ? const CardFront(
                                type: CardType.truth,
                                content:
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              )
                            : Transform(
                                transform: Matrix4.identity()..rotateY(pi),
                                alignment: Alignment.center,
                                child: const CardBack(type: CardType.truth))));
                  },
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: FloatingActionButton.extended(
                      onPressed: () => {},
                      heroTag: "newGame",
                      foregroundColor: primaryTextColor,
                      label: const Text(
                        "Game mới",
                        style: TextStyle(
                          fontFamily: "Facebook",
                          fontSize: 21,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: FloatingActionButton.extended(
                      heroTag: "save",
                      onPressed: () => {
                        //Save
                      },
                      icon: SvgPicture.asset("assets/icons/suffer.svg"),
                      foregroundColor: primaryTextColor,
                      label: const Text(
                        "Trộn",
                        style: TextStyle(
                          fontFamily: "Facebook",
                          fontSize: 21,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isFlipped = false;
                  });
                },
                child: const SpecialButton(
                  content: "Rút tiếp!",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
