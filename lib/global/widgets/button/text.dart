import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final void Function()? onTapButton;
  final String textButton;

  const TextButtonWidget({
    Key? key,
    required this.onTapButton,
    required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapButton,
      child: TextWidget(
        text: textButton,
        textSize: HomeController.to.isMobile
        ? Sizes.body1Mobile
        : Sizes.body1Site,
        isTextAlignCenter: true,
        alignmentDirection: Alignment.center
     ),
    );
  }
}
