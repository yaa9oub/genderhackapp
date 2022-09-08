import 'package:genderhackapp/bindings/auth_binding.dart';
import 'package:genderhackapp/bindings/blog_binding.dart';
import 'package:genderhackapp/bindings/game_binding.dart';
import 'package:genderhackapp/bindings/home_binding.dart';
import 'package:genderhackapp/bindings/splash_binding.dart';
import 'package:genderhackapp/routes/app_routes.dart';
import 'package:genderhackapp/screens/auth/auth_screen.dart';
import 'package:genderhackapp/screens/blog/blog_screen.dart';
import 'package:genderhackapp/screens/game/game_screen.dart';
import 'package:genderhackapp/screens/home/home_page.dart';
import 'package:genderhackapp/screens/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.game,
      page: () => const GamePage(),
      binding: GameBinding(),
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.auth,
      page: () => const AuthPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.blog,
      page: () => const BlogPage(),
      binding: BlogBinding(),
    ),
  ];
}
