import 'package:get/get.dart';
import '../counter/binding.dart';
import '../navigator/my_navigation_bar.dart';
import '../pages/home_test.dart';

class RouteGet {
  ///root page
  static const String main = "/";
  static const String article = "/article";
  static const String articleDetails = "/articleDetails";

  ///pages map
  static final List<GetPage> getPages = [
    GetPage(
        name: main,
        page: () => const MyNavigationBarPage(),
        binding: CounterBinding()),
    GetPage(name: article, page: () => const HomeTest()),
  ];
}
