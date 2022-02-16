
import 'package:drinking_card/enums.dart';

class DrinkingCard{
  String content;
  bool isDefault;
  CardType type;
  bool isChoose;

  DrinkingCard(this.content, this.type, this.isChoose, {this.isDefault = false});
}