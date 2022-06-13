import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonElevatedWidget extends StatelessWidget {
  final void Function()? onTapButton;
  final String buttonText;

  const ButtonElevatedWidget({
    Key? key,
    required this.onTapButton,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTapButton,
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        padding: const EdgeInsets.all(8.0),
        fixedSize: Size(Get.mediaQuery.size.width, Get.mediaQuery.size.height * 0.07),
      ),
      child: AutoSizeText(
        buttonText.toUpperCase(),
        maxLines: 1,
        minFontSize: 5.0,
        stepGranularity: 1,
        style: TextStyle(
          color: Theme.of(context).scaffoldBackgroundColor,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
