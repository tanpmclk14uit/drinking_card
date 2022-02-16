import 'package:drinking_card/constraint.dart';
import 'package:drinking_card/presentation/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardManagement extends StatelessWidget {
  const CardManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        leading: Container(),
        backgroundColor: backgroundColor,
        actions: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: CustomIconButton(
                      Icon(
                        Icons.arrow_back_ios,
                        color: primaryTextColor,
                        size: 20,
                      ),
                      "Trở về"),
                ),
                CustomIconButton(
                    SvgPicture.asset("assets/icons/default.svg"), "Mặc định")
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
