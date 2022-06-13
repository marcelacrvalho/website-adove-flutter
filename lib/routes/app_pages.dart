import 'package:adove/modules/contact/bindings/contact.dart';
import 'package:adove/modules/contact/views/contact.dart';
import 'package:adove/modules/home/bindings/home.dart';
import 'package:adove/modules/home/views/home.dart';
import 'package:adove/modules/information/bindings/information.dart';
import 'package:adove/modules/information/views/information.dart';
import 'package:adove/modules/register/bindings/register.dart';
import 'package:adove/modules/register/views/address.dart';
import 'package:adove/modules/register/views/info.dart';
import 'package:adove/modules/register/views/location.dart';
import 'package:adove/modules/register/views/notice.dart';
import 'package:adove/modules/register/views/register.dart';
import 'package:adove/modules/register/views/store.dart';
import 'package:adove/modules/welcome/bindings/welcome.dart';
import 'package:adove/modules/welcome/views/welcome.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:get/get.dart';

class WebPages {
  static final routes = [
    GetPage(
      name: Routes.kHome,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.kRegister,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.kNotice,
      page: () => NoticeView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.kRegisterStoreCity,
      page: () => RegisterLocation(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.kRegisterStoreAddress,
      page: () => RegisterAddress(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.kRegisterStoreInfo,
      page: () => const RegisterInfo(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.kRegisterStoreName,
      page: () => RegisterStoreView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.kContact,
      page: () => ContactView(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: Routes.kAbout,
      page: () => const InformationView(),
      binding: InformationBinding(),
    ),
    GetPage(
      name: Routes.kWelcome,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
  ];
}
