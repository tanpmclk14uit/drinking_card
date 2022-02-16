import 'package:drinking_card/constraint.dart';
import 'package:drinking_card/data/models/card.dart';
import 'package:drinking_card/data/models/game_state.dart';
import 'package:drinking_card/enums.dart';
import 'package:drinking_card/presentation/widgets/card.dart';
import 'package:drinking_card/presentation/widgets/custom_app_bar.dart';
import 'package:drinking_card/presentation/widgets/special_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlayingScreen extends StatefulWidget {
  PlayingScreen({Key? key, required this.previousCardCount}) : super(key: key);
  final int previousCardCount;
  final GameState gameState = GameState.fakeData();

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
              Expanded(
                  child: Stack(
                      children: widget.gameState.playingCards
                          .map((e) => PlayingCard(drinkingCard: e))
                          .toList())),
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
                    widget.gameState.playingCards.remove(widget.gameState.currentCard);
                    widget.gameState.currentCard = widget.gameState.playingCards.last;
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
