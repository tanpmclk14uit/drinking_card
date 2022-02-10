import 'package:drinking_card/constraint.dart';
import 'package:drinking_card/enums.dart';
import 'package:drinking_card/presentation/widgets/card_front.dart';
import 'package:drinking_card/presentation/widgets/custom_app_bar.dart';
import 'package:drinking_card/presentation/widgets/special_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlayingScreen extends StatefulWidget {
  const PlayingScreen(
      {Key? key, required this.previousCardCount, required this.isFlitted})
      : super(key: key);
  final int previousCardCount;
  final bool isFlitted;

  @override
  _PlayingScreenState createState() => _PlayingScreenState();
}

class _PlayingScreenState extends State<PlayingScreen> {
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
              const Expanded(
                  child: CardFront(
                type: CardType.truth,
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
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
              const SpecialButton(
                content: "Rút tiếp!",
              )
            ],
          ),
        ),
      ),
    );
  }
}
