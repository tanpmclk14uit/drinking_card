import 'package:drinking_card/presentation/screen/card_management.dart';
import 'package:drinking_card/presentation/screen/playing.dart';
import 'package:drinking_card/presentation/screen/setting.dart';
import 'package:drinking_card/presentation/widgets/title.dart';
import 'package:drinking_card/constraint.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/special_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/top.png"),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: ListView(
                    children: [
                      const AppTitle(),
                      const SizedBox(height: 50),
                      FloatingActionButton.extended(
                          onPressed: () => {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayingScreen(previousCardCount: 10),))
                          },
                          icon: const Icon(Icons.play_circle_fill_outlined),
                          backgroundColor: Colors.white,
                          foregroundColor: primaryTextColor,
                          heroTag: "continue",
                          label: Text("Tiếp tục", style: buttonTextStyle)),
                      const SizedBox(
                        height: 7,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayingScreen(previousCardCount: 0)));
                          },
                          child: const SpecialButton(content: "Ván mới")),
                      const SizedBox(height: 7),
                      FloatingActionButton.extended(
                          onPressed: () => {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CardManagement(),))
                          },
                          heroTag: "edit",
                          icon: const Icon(Icons.edit),
                          backgroundColor: Colors.white,
                          foregroundColor: primaryTextColor,
                          label: Text("Chỉnh sửa thẻ", style: buttonTextStyle)),
                      const SizedBox(height: 7),
                      FloatingActionButton.extended(
                          onPressed: () => {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SettingScreen(),
                                ))
                              },
                          heroTag: "setting",
                          icon: const Icon(Icons.settings),
                          backgroundColor: Colors.white,
                          foregroundColor: primaryTextColor,
                          label: Text("Cài đặt", style: buttonTextStyle)),
                      const SizedBox(height: 7),
                      FloatingActionButton.extended(
                          onPressed: () => {
                            SystemNavigator.pop()
                          },
                          icon: const Icon(Icons.exit_to_app),
                          backgroundColor: Colors.white,
                          heroTag: "exit",
                          foregroundColor: primaryTextColor,
                          label: Text("Vợ gọi", style: buttonTextStyle)),
                    ],
                  ),
                ),
              ),
              Image.asset("assets/bottom.png")
            ],
          ),
        ),
      ),
    );
  }
}
