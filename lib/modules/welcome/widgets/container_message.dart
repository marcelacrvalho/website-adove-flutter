import 'package:adove/global/utilities/sizes.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ContainerMessageWidget extends StatelessWidget {
  
  final String text;

  const ContainerMessageWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Column(
        children: [
        AnimatedTextKit(
        repeatForever: false,
        totalRepeatCount: 1,
        animatedTexts: [
          TypewriterAnimatedText(
            text,
            speed: const Duration(milliseconds: 100),
            textStyle: TextStyle(
              fontSize: Sizes.isMobile() ? Sizes.body2Mobile : Sizes.body2Site,
              color: Colors.white,
            ),
          ),
        ],
      ),
        ],
      ),
    );
  }
}