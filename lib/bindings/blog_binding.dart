import 'package:genderhackapp/screens/blog/blog_controller.dart';
import 'package:get/get.dart';

class BlogBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BlogController>(() => BlogController());
  }
}
