import 'package:adove/global/utilities/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final IconData? icon;
  final void Function()? onTap;

  const FloatingActionButtonWidget({
    Key? key,
    required this.onTap,
    this.icon = Icons.arrow_right_alt_rounded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.isMobile()
          ? Get.mediaQuery.size.width * 0.12
          : Get.mediaQuery.size.width * 0.05,
      height: Sizes.isMobile()
          ? Get.mediaQuery.size.height * 0.08
          : Get.mediaQuery.size.height * 0.06,
      child: FloatingActionButton.extended(
        onPressed: onTap,
        backgroundColor: Theme.of(context).primaryColor,
        label: Padding(
          padding: const EdgeInsets.all(4.0),
          child: FittedBox(
            child: Icon(
              icon,
              size: Sizes.isMobile()
                  ? Get.mediaQuery.size.width * 0.06
                  : Get.mediaQuery.size.width * 0.02,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
