import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageAvatarWidget extends StatelessWidget {
  final String path;

  const ImageAvatarWidget({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: Get.mediaQuery.size.width * 0.15,
        maxHeight: Get.mediaQuery.size.height * 0.15,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(path),
        ),
      ),
    );
  }
}
