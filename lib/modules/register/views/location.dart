import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/fab.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:adove/modules/register/widgets/text/autocomplete.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterLocation extends StatelessWidget {
  final controller = Get.put<RegisterController>(RegisterController());

  RegisterLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: Sizes.isMobile()
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MenuWidget(),
              const Divider(),
              SizedBox(
                width: Get.mediaQuery.size.width,
                height: Get.mediaQuery.size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: Sizes.isMobile()
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: ImageAvatarWidget(
                          path: 'assets/images/avatar-register.jpg',
                        ),
                      ),
                      TextWidget(
                        text: 'Essas informações são importantes',
                        textSize: HomeController.to.isMobile
                            ? Sizes.body1Mobile
                            : Sizes.body1Site,
                        isTextAlignCenter: true,
                        alignmentDirection: Alignment.center,
                      ),
                      TextWidget(
                        text: 'Preencha-as com cuidado',
                        textSize: HomeController.to.isMobile
                            ? Sizes.body2Mobile
                            : Sizes.body2Site,
                        isTextAlignCenter: true,
                        alignmentDirection: Alignment.center,
                      ),
                      const Divider(),
                        AutocompleteWidget(
                          controllerCity: controller.locationController,
                        ),
                        const Divider(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButtonWidget(
                            onTap: () => Get.toNamed(Routes.kRegisterStoreAddress),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
