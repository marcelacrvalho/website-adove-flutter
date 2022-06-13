import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/elevated.dart';
import 'package:adove/global/widgets/form/form.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterStoreView extends StatelessWidget {
  final controller = Get.put<RegisterController>(RegisterController());

  RegisterStoreView({Key? key}) : super(key: key);

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
            mainAxisAlignment: HomeController.to.isMobile
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MenuWidget(),
              const Divider(),
              Container(
                alignment: Alignment.center,
                width: HomeController.to.isMobile
                ? Get.mediaQuery.size.width 
                : Get.mediaQuery.size.width * 0.3,
                height: Get.mediaQuery.size.height,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: HomeController.to.isMobile
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: HomeController.to.isMobile
                          ? const EdgeInsets.all(0.0)
                          : const EdgeInsets.all(16.0),
                      child: const ImageAvatarWidget(
                        path: 'assets/images/avatar-register.jpg',
                      ),
                    ),
                    TextWidget(
                      text: 'Até que enfim',
                      textSize: HomeController.to.isMobile
                          ? Sizes.body1Mobile
                          : Sizes.body1Site,
                      isTextAlignCenter: true,
                      alignmentDirection: Alignment.center,
                    ),
                    TextWidget(
                      text: 'Última pergunta',
                      textSize: HomeController.to.isMobile
                          ? Sizes.body2Mobile
                          : Sizes.body2Site,
                      isTextAlignCenter: true,
                      alignmentDirection: Alignment.center,
                    ),
                    const Divider(),
                    FormFieldWidget(
                      controller: controller.nameController,
                      labelText: 'Qual é o nome da sua empresa?',
                    ),
                    const Divider(),
                    ButtonElevatedWidget(
                      onTapButton: () => controller.registerStore(),
                      buttonText: 'Acabei',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
