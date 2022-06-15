import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class RowAppInformationWidget extends StatelessWidget {
  const RowAppInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _iconSize = 30.0;

    return SizedBox(
      height: Get.mediaQuery.size.height * 0.5,
      child: Row(
        children: [
          Expanded(
            child: _iconText(
              const Icon(
                Icons.visibility,
                size: _iconSize,
                color: Colors.grey,
              ),
              'Maior visibilidade para o seu negócio',
            ),
          ),
          Expanded(
            child: _iconText(
              const Icon(
                Icons.event,
                size: _iconSize,
                color: Colors.grey,
              ),
              'Agendamento rápido e fácil, sem estresse',
            ),
          ),
          Expanded(
            child: _iconText(
              const Icon(
                Icons.addchart_outlined,
                size: _iconSize,
                color: Colors.grey,
              ),
              'Redução de faltas e atrasos dos clientes',
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconText(Icon icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: icon),
        Center(
          child: TextRenderer(
            child: TextWidget(
              text: text,
              isTextAlignCenter: true,
              alignmentDirection: Alignment.center,
              textSize: HomeController.to.isMobile
                  ? Sizes.h1Mobile
                  : Sizes.h1Site,
              fontFamily: 'Made',
            ),
          ),
        ),
      ],
    );
  }
}