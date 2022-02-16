import 'dart:math';
import 'package:drinking_card/data/models/card.dart';
import 'package:flutter/material.dart';
import 'card_back.dart';
import 'card_front.dart';

class PlayingCard extends StatefulWidget {
  const PlayingCard({Key? key, required this.drinkingCard}) : super(key: key);
  final DrinkingCard drinkingCard;

  @override
  _PlayingCardState createState() => _PlayingCardState();
}

class _PlayingCardState extends State<PlayingCard> {
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
    return GestureDetector(
      onTap: _flip,
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: pi, end: angle),
        duration: const Duration(milliseconds: 500),
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
                  ? CardFront(
                      type: widget.drinkingCard.type,
                      content: widget.drinkingCard.content,
                    )
                  : Transform(
                      transform: Matrix4.identity()..rotateY(pi),
                      alignment: Alignment.center,
                      child: CardBack(type: widget.drinkingCard.type))));
        },
      ),
    );
  }
}
