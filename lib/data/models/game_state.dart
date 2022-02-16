import 'package:drinking_card/data/models/card.dart';
import 'package:drinking_card/enums.dart';

class GameState {
  late List<DrinkingCard> playingCards;
  late List<DrinkingCard> previousCards;
  late bool isEnd;
  late DrinkingCard currentCard;

  GameState(
      this.playingCards, this.previousCards, this.isEnd, this.currentCard);

  GameState.fakeData() {
    playingCards = [];
    previousCards = [];
    isEnd = false;
    for (int i = 0; i < 70; i++) {
      CardType cardType = i%2==0? CardType.truth: CardType.action;
      DrinkingCard drinkingCard = DrinkingCard("$i", cardType, true);
      playingCards.add(drinkingCard);
      if(i%2==0){
        previousCards.add(drinkingCard);
      }
    }
    currentCard = playingCards[69];
  }
}
