import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final Alignment alignmentDirection;
  final String text;
  final double textSize;
  final String fontFamily;
  final Color color;
  final bool isTextAlignCenter;

  const TextWidget({
    Key? key,
    required this.text,
    this.textSize = 12.0,
    this.alignmentDirection = Alignment.topLeft,
    this.fontFamily = 'Myriad',
    this.color = Colors.grey,
    this.isTextAlignCenter = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignmentDirection,
      child: Text(
        text,
        textAlign: isTextAlignCenter ? TextAlign.center : TextAlign.start,
        style: TextStyle(
          color: color,
          fontSize: textSize,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
