import 'package:adove/modules/home/controllers/home.dart';
import 'package:adove/modules/welcome/controllers/welcome.dart';
import 'package:adove/modules/welcome/widgets/container_message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  final controller = Get.put<WelcomeController>(WelcomeController());

  WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SizedBox(
            width: Get.mediaQuery.size.width * 0.5,
            height: Get.mediaQuery.size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: HomeController.to.isMobile
               ? MainAxisAlignment.start
               : MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Icon(
                    Icons.person,
                    size: HomeController.to.isMobile 
                    ? Get.mediaQuery.size.width * 0.15
                    : Get.mediaQuery.size.width * 0.02,
                    color: Colors.white,
                  ),
                ),
                const Divider(),
                ContainerMessageWidget(text: controller.welcomeText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
