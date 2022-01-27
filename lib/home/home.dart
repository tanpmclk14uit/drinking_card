import 'package:drinking_card/components/title.dart';
import 'package:drinking_card/constraint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/NormalButton.dart';
import 'components/SpecialButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/top.png"),
            Expanded(
              child: ListView(
                children: const [
                  AppTitle(),
                  SizedBox(height: 50),
                  HomeButton(Icon(Icons.play_circle_fill_outlined), "Continue"),
                  SizedBox(
                    height: 7,
                  ),
                  SpecialButton(),
                  SizedBox(height: 7),
                  HomeButton(Icon(Icons.edit), "Custom card"),
                  SizedBox(height: 7),
                  HomeButton(Icon(Icons.settings), "Setting"),
                  SizedBox(height: 7),
                  HomeButton(Icon(Icons.exit_to_app), "Wife call")
                ],
              ),
            ),
            Image.asset("assets/bottom.png")
          ],
        ),
      ),
    );
  }
}


