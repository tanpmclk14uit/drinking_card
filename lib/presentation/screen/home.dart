import 'package:drinking_card/presentation/widgets/title.dart';
import 'package:drinking_card/constraint.dart';
import 'package:flutter/material.dart';
import '../widgets/NormalButton.dart';
import '../widgets/SpecialButton.dart';

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
                  HomeButton(Icon(Icons.play_circle_fill_outlined), "Tiếp tục"),
                  SizedBox(
                    height: 7,
                  ),
                  SpecialButton(),
                  SizedBox(height: 7),
                  HomeButton(Icon(Icons.edit), "Chỉnh sửa thẻ"),
                  SizedBox(height: 7),
                  HomeButton(Icon(Icons.settings), "Cài đặt"),
                  SizedBox(height: 7),
                  HomeButton(Icon(Icons.exit_to_app), "Vợ gọi")
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


