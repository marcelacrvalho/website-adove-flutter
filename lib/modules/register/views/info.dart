import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/fab.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterInfo extends StatelessWidget {
  const RegisterInfo({Key? key}) : super(key: key);

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
            children: [
              const MenuWidget(),
              const Divider(),
              Container(
                width: Get.mediaQuery.size.width,
                height: Get.mediaQuery.size.height,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: HomeController.to.isMobile
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
                      text: 'Está acabando',
                      textSize: HomeController.to.isMobile
                          ? Sizes.body1Mobile
                          : Sizes.body1Site,
                      isTextAlignCenter: true,
                      alignmentDirection: Alignment.center,
                    ),
                    TextWidget(
                      text: 'Aguente firme. Só mais algumas perguntas',
                      textSize: HomeController.to.isMobile
                          ? Sizes.body2Mobile
                          : Sizes.body2Site,
                      isTextAlignCenter: true,
                      alignmentDirection: Alignment.center,
                    ),
                    const Divider(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextWidget(
                        text: 'Como você classificaria o seu negócio?',
                        textSize: HomeController.to.isMobile
                            ? Sizes.body1Mobile
                            : Sizes.body1Site,
                      ),
                    ),
                    const Divider(),
                    _dropdownCategory(),
                    const Divider(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextWidget(
                        text:
                            'Na sua empresa, existe a opção de atender o cliente na casa dele?',
                        textSize: HomeController.to.isMobile
                            ? Sizes.body1Mobile
                            : Sizes.body1Site,
                      ),
                    ),
                    const Divider(),
                    _dropdownHomecare(),
                    const Divider(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextWidget(
                        text: 'Quais os dias de atendimento?',
                        textSize: HomeController.to.isMobile
                            ? Sizes.body1Mobile
                            : Sizes.body1Site,
                      ),
                    ),
                    const Divider(),
                    _dropdownOpen(),
                    const Divider(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextWidget(
                        text: 'Quais meios de pagamento você aceita?',
                        textSize: HomeController.to.isMobile
                            ? Sizes.body1Mobile
                            : Sizes.body1Site,
                      ),
                    ),
                    const Divider(),
                    _dropdownPayment(),
                    const Divider(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButtonWidget(
                        onTap: () => RegisterController.to.toRegisterName(),
                      ),
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

  Widget _dropdownCategory() {
    return Obx(
      () => DropdownButton<String>(
          value: RegisterController.to.categoryValue.value,
          isDense: true,
          isExpanded: true,
          items: RegisterController.to.categoryItems.map((String item) {
            return DropdownMenuItem<String>(
              child: TextWidget(
                text: item,
                alignmentDirection: Alignment.centerLeft,
                textSize: HomeController.to.isMobile
                    ? Sizes.body1Mobile
                    : Sizes.body1Site,
                color: Colors.blue,
              ),
              value: item,
            );
          }).toList(),
          onChanged: (value) {
            RegisterController.to.categoryValue.value = value.toString();
          }),
    );
  }

  Widget _dropdownHomecare() {
    return Obx(
      () => DropdownButton<String>(
          value: RegisterController.to.homecareValue.value,
          isDense: true,
          isExpanded: true,
          items: RegisterController.to.homecare.map((String item) {
            return DropdownMenuItem<String>(
              child: TextWidget(
                text: item,
                alignmentDirection: Alignment.centerLeft,
                textSize: HomeController.to.isMobile
                    ? Sizes.body1Mobile
                    : Sizes.body1Site,
                color: Colors.blue,
              ),
              value: item,
            );
          }).toList(),
          onChanged: (value) {
            RegisterController.to.homecareValue.value = value.toString();
          }),
    );
  }

  Widget _dropdownOpen() {
    return Obx(
      () => DropdownButton<String>(
          value: RegisterController.to.openValue.value,
          isDense: true,
          isExpanded: true,
          items: RegisterController.to.open.map((String item) {
            return DropdownMenuItem<String>(
              child: TextWidget(
                text: item,
                alignmentDirection: Alignment.centerLeft,
                textSize: HomeController.to.isMobile
                    ? Sizes.body1Mobile
                    : Sizes.body1Site,
                color: Colors.blue,
              ),
              value: item,
            );
          }).toList(),
          onChanged: (value) {
            RegisterController.to.openValue.value = value.toString();
          }),
    );
  }

  Widget _dropdownPayment() {
    return Obx(
      () => DropdownButton<String>(
          value: RegisterController.to.paymentValue.value,
          isDense: true,
          isExpanded: true,
          items: RegisterController.to.payment.map((String item) {
            return DropdownMenuItem<String>(
              child: TextWidget(
                text: item,
                alignmentDirection: Alignment.centerLeft,
                textSize: HomeController.to.isMobile
                    ? Sizes.body1Mobile
                    : Sizes.body1Site,
                color: Colors.blue,
              ),
              value: item,
            );
          }).toList(),
          onChanged: (value) {
            RegisterController.to.paymentValue.value = value.toString();
          }),
    );
  }
}
