import 'package:get/get.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:genderhackapp/const/globals.dart';
import 'package:url_launcher/url_launcher.dart';

class GameController extends GetxController {
  MatchEngine? matchEngine;
  List<SwipeItem> swipeItems = <SwipeItem>[];

  @override
  void onInit() {
    super.onInit();
    getSwipeItems();
    matchEngine = MatchEngine(swipeItems: swipeItems);
  }

  void getSwipeItems() {
    for (int i = 0; i < questionsList.length; i++) {
      swipeItems.add(
        SwipeItem(
          content: questionsList[i],
        ),
      );
    }
  }

  Future<void> openMap() async {
    String googleUrl =
        'https://www.google.com/maps/place/Pharmacie+de+Nuit+صيدلية+الليل%E2%80%AD/@36.3646806,10.5228272,14z';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {}
  }
}
