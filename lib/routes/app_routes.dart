import 'package:mumshad_s_application1/presentation/home_page_screen/home_page_screen.dart';
import 'package:mumshad_s_application1/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homePageScreen = '/home_page_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    )
  ];
}
