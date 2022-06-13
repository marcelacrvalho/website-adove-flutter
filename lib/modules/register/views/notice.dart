import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/button/fab.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoticeView extends StatelessWidget {
  final controller = Get.put<RegisterController>(RegisterController());

  NoticeView({Key? key}) : super(key: key);

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
              TextWidget(
                text: 'As próximas informações ditarão como seu negócio será '
                    'apresentado no aplicativo',
                textSize:
                    HomeController.to.isMobile ? Sizes.body1Mobile : Sizes.body1Site,
                isTextAlignCenter: true,
                alignmentDirection: Alignment.center,
              ),
              TextWidget(
                text: 'Preencha-as com cuidado e atenção, como você cuida do '
                    'seu empreendimento',
                textSize:
                    HomeController.to.isMobile ? Sizes.body2Mobile : Sizes.body2Site,
                isTextAlignCenter: true,
                alignmentDirection: Alignment.center,
              ),
              Container(
                width: Get.mediaQuery.size.width * 0.6,
                height: Get.mediaQuery.size.height * 0.6,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/img-rocket.png'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButtonWidget(
                  onTap: () => Get.toNamed(Routes.kRegisterStoreCity),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
