import 'package:adove/modules/home/bindings/home.dart';
import 'package:adove/routes/app_pages.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() {
  runApp(
    RobotDetector(
      debug: true,
      child: GetMaterialApp(
        title: 'Adove',
        navigatorObservers: [seoRouteObserver],
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.kHome,
        getPages: WebPages.routes,
        initialBinding: HomeBinding(),
        defaultTransition: Transition.rightToLeftWithFade,
        theme: ThemeData(
          primaryColor: Colors.blue,
          primaryColorDark: const Color(0XFF81156A),
          primaryColorLight: const Color(0XFFDAF7A6),
          scaffoldBackgroundColor: Colors.white,
          dividerColor: Colors.transparent,
          fontFamily: 'Myriad',
          visualDensity: VisualDensity.adaptivePlatformDensity,
          buttonTheme: const ButtonThemeData(
            padding: EdgeInsets.all(8.0),
            buttonColor: Colors.blue,
          ),
        ),
      ),
    ),
  );
}
