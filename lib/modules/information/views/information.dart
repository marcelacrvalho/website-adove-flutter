import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/modules/information/widgets/row_satisfaction.dart';
import 'package:adove/modules/information/widgets/row_app_info.dart';
import 'package:adove/modules/information/widgets/row_data_info.dart';
import 'package:adove/modules/information/widgets/row_payment_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';

class InformationView extends StatelessWidget {
  const InformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const MenuWidget(),
              const Divider(),
              const RowDataInfo(),
              _mockupApp(),
              const RowAppInformationWidget(),
              const RowSatisfaction(),
              const Divider(),
              const ColumnPaymentAndAddress(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _mockupApp() {
    return SizedBox(
      height: Get.mediaQuery.size.height * 0.5,
      width: Get.mediaQuery.size.height * 0.5,
      child: Center(
        child: ImageRenderer(
          alt: 'Smartphone com a tela inicial Adove',
          child: Image.asset('assets/images/img-info.png', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
