import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogController extends GetxController {
  Future<void> goto(link) async {
    String url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {}
  }
}
