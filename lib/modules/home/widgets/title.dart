import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TitleWidgetHome extends StatelessWidget {
  final String title;

  const TitleWidgetHome({
    Key? key, 
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AutoSizeText(
        title,
        textAlign: TextAlign.center,
        minFontSize: 10.0,
        stepGranularity: 1,
        maxFontSize: 100.0,
        style: TextStyle(
          color: Colors.grey[200],
          fontSize: 80.0,
          fontFamily: 'Made'
        ),
      ),
    );
  }
}
