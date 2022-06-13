import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class CardDataWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const CardDataWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.mediaQuery.size.height * 0.5,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child: TextRenderer(
              child: Text(
                title,
                maxLines: 3,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: HomeController.to.isMobile
                      ? Sizes.h1Mobile
                      : Sizes.h1Site,
                  fontFamily: 'Made',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Flexible(
            child: TextRenderer(
              child: Text(
                subtitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize:
                      Sizes.isMobile() ? Sizes.body1Mobile : Sizes.body1Site,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
