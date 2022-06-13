import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/elevated.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/contact/controllers/contact.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class ContactView extends StatelessWidget {
  final controller = Get.put<ContactController>(ContactController());

  ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
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
            Center(
              child: Container(
                alignment: Alignment.center,
                width: HomeController.to.isMobile
                    ? Get.mediaQuery.size.width
                    : Get.mediaQuery.size.width * 0.3,
                height: Get.mediaQuery.size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: HomeController.to.isMobile
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ImageRenderer(
                        alt: 'Avatar',
                        child: ImageAvatarWidget(
                            path: 'assets/images/avatar-login.jpg'),
                      ),
                      const Divider(),
                      const TextRenderer(
                          child: TextWidget(
                        text: 'Olá, posso te ajudar?',
                        textSize: 15.0,
                        alignmentDirection: Alignment.center,
                        isTextAlignCenter: true,
                      )),
                      const TextRenderer(
                        child: TextWidget(
                          text: 'Dúvidas, reclamações, pedidos e sugestões',
                          alignmentDirection: Alignment.center,
                          isTextAlignCenter: true,
                        ),
                      ),
                      const Divider(),
                      ButtonElevatedWidget(
                        onTapButton: () => _launchWhatsApp(),
                        buttonText: 'Contato',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchWhatsApp() async {
    const link =  WhatsAppUnilink(
      phoneNumber: '+55-(35)998157399',
    );
    await launch('$link');
  }
}
