import 'package:drinking_card/constraint.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: <Widget>[
            CustomAppBar(previousCardCount: widget.previousCardCount),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: FloatingActionButton.extended(
                    onPressed: () => {
                      //Back to main screen
                      Navigator.of(context).pop()
                    },
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
    );
  }
}
