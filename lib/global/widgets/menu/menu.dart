import 'package:adove/global/widgets/button/text.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            offset: const Offset(0, -2),
            blurRadius: 30.0,
          ),
        ],
      ),
      child: Row(
              children: [
                Expanded(
                  child: TextButtonWidget(
                    onTapButton: () => Get.toNamed(Routes.kHome),
                    textButton: 'INÍCIO',
                  ),
                ),
                Expanded(
                  child: TextButtonWidget(
                    onTapButton: () => Get.toNamed(Routes.kAbout),
                    textButton: 'INFORMAÇÕES',
                  ),
                ),
                Expanded(
                  child: TextButtonWidget(
                    onTapButton: () => Get.toNamed(Routes.kRegister),
                    textButton: 'CADASTRAR',
                  ),
                ),
              ],
            ),
    );
  }
}
