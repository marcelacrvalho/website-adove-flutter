import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackgroundWidgetHome extends StatelessWidget {
  final String path;

  const BackgroundWidgetHome({
    Key? key,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Image.asset(
          path,
          fit: BoxFit.cover,
          width: Get.mediaQuery.size.width,
          height: Get.mediaQuery.size.height,
        ),
    );
  }
}
