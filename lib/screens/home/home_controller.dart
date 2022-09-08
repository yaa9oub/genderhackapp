import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  Future<void> openMap() async {
    String googleUrl =
        'https://www.google.com/maps/place/Pharmacie+de+Nuit+صيدلية+الليل%E2%80%AD/@36.3646806,10.5228272,14z';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {}
  }

  Future<void> follow() async {
    String url = 'https://www.instagram.com/__mhassen__/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {}
  }
}
