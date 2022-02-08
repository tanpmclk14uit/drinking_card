import 'package:drinking_card/constraint.dart';
import 'package:drinking_card/presentation/widgets/normal_button.dart';
import 'package:drinking_card/presentation/widgets/title.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  late String dropdownValue;
  late double musicVolume;
  late double soundVolume;

  @override
  void initState() {
    super.initState();
    dropdownValue = languageList[0];
    musicVolume = 20;
    soundVolume = 20;
  }

  final List<String> languageList = <String>['Tiếng Việt', 'English'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: backgroundColor,
          child: Column(
            children: <Widget>[
              Image.asset('assets/top.png'),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const AppTitle(),
                    const SizedBox(height: 30),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Ngôn ngữ', style: mainTextStyle),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: DropdownButton(
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: primaryTextColor,
                                      size: 35,
                                    ),
                                    style: mainTextStyle,
                                    underline:
                                        const SizedBox(width: 0, height: 0),
                                    items: languageList
                                        .map<DropdownMenuItem<String>>(
                                            (String value) =>
                                                DropdownMenuItem<String>(
                                                  child: Text(value),
                                                  value: value,
                                                ))
                                        .toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        dropdownValue = newValue.toString();
                                      });
                                    },
                                    value: dropdownValue,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text('Âm lượng:', style: mainTextStyle)
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.volume_up,
                                  size: 30,
                                  color: primaryTextColor,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Nhạc nền:',
                                  style: mainTextStyle,
                                ),
                                Expanded(
                                  child: Slider(
                                    activeColor: primaryTextColor,
                                    inactiveColor: primaryTextColor,
                                    value: musicVolume,
                                    max: 100,
                                    divisions: 20,
                                    label: musicVolume.round().toString(),
                                    onChanged: (value) {
                                      setState(() {
                                        musicVolume = value;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.volume_up,
                                  size: 30,
                                  color: primaryTextColor,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Âm thanh:',
                                  style: mainTextStyle,
                                ),
                                Expanded(
                                  child: Slider(
                                    activeColor: primaryTextColor,
                                    inactiveColor: primaryTextColor,
                                    value: soundVolume,
                                    max: 100,
                                    divisions: 20,
                                    label: soundVolume.round().toString(),
                                    onChanged: (value) {
                                      setState(() {
                                        soundVolume = value;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                  child: FloatingActionButton.extended(
                                    onPressed: () => {},
                                    icon: const Icon(Icons.exit_to_app),
                                    foregroundColor: primaryTextColor,
                                    label: const Text(
                                      "Thoát",
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
                                    onPressed: () => {},
                                    icon: const Icon(Icons.save),
                                    foregroundColor: primaryTextColor,
                                    label: const Text(
                                      "Lưu",
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
                            )

                          ],
                        ))
                  ],
                ),
              ),
              Image.asset('assets/bottom.png')
            ],
          )),
    );
  }
}
