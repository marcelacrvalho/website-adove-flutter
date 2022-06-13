import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColumnPaymentAndAddress extends StatelessWidget {
  const ColumnPaymentAndAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.mediaQuery.size.height * 0.6,
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _paymentInfo()),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/images/img-rocket.png'),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          _address(),
        ],
      ),
    );
  }

  Widget _paymentInfo() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextWidget(
            text: 'Apenas',
            textSize:
                Sizes.isMobile() ? Sizes.body1Mobile - 2 : Sizes.body1Site - 2,
            isTextAlignCenter: true,
            alignmentDirection: Alignment.center),
        _coloredContainerPrice(),
        TextWidget(
          text: 'Sem taxa de adesão',
          textSize:
              Sizes.isMobile() ? Sizes.body1Mobile - 2 : Sizes.body1Site - 2,
          isTextAlignCenter: true,
          alignmentDirection: Alignment.center,
        ),
        TextWidget(
          text: 'Sem burocracia',
          textSize:
              Sizes.isMobile() ? Sizes.body1Mobile - 2 : Sizes.body1Site - 2,
          isTextAlignCenter: true,
          alignmentDirection: Alignment.center,
        ),
        TextWidget(
          text: 'Cancele quando quiser',
          textSize:
              Sizes.isMobile() ? Sizes.body1Mobile - 2 : Sizes.body1Site - 2,
          isTextAlignCenter: true,
          alignmentDirection: Alignment.center,
        ),
      ],
    );
  }

  Widget _coloredContainerPrice() {
    return Container(
      color: Colors.deepPurple[300],
      padding: const EdgeInsets.all(16.0),
      child: TextWidget(
        text: 'R\$ 22 mensais',
        fontFamily: 'Made',
        textSize: Sizes.isMobile() ? Sizes.h1Mobile - 2 : Sizes.h1Site - 2,
        color: Colors.white,
        isTextAlignCenter: true,
        alignmentDirection: Alignment.center,
      ),
    );
  }

  Widget _address() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TextWidget(
            text: 'Fedra Tecnologia',
            textSize: HomeController.to.isMobile
                ? Sizes.body2Mobile - 2
                : Sizes.body1Site - 2,
            isTextAlignCenter: true,
            alignmentDirection: Alignment.center,
          ),
        ),
        TextWidget(
          text: 'Benjamin Constant, 116. Varginha, Minas Gerais. Brasil',
          textSize: HomeController.to.isMobile
              ? Sizes.body2Mobile - 2
              : Sizes.body1Site - 2,
          isTextAlignCenter: true,
          alignmentDirection: Alignment.center,
        ),
      ],
    );
  }
}
