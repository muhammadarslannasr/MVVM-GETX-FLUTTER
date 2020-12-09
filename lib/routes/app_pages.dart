import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_code_structure/bindings/home_binding.dart';
import 'package:getx_code_structure/views/country_view.dart';
import 'package:getx_code_structure/views/details_view.dart';
import 'package:getx_code_structure/views/home_view.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: Routes.COUNTRY,
          page: () => CountryView(),
          children: [
            GetPage(
              name: Routes.DETAILS,
              page: () => DetailsView(),
            ),
          ],
        ),
      ],
    ),
  ];
}
