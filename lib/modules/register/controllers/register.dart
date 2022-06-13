import 'package:adove/data/graphql/mutations.dart';
import 'package:adove/data/graphql/server.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql/client.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterController extends GetxController {
  static RegisterController get to => Get.find<RegisterController>();
  final GraphQLClient _client = getGraphQLClient();
  String urlPaymentLink =
      'https://www.mercadopago.com.br/subscriptions/checkout?preapproval_plan_id=2c9380847b629336017bd6260d545e0f';

  List<String> categoryItems = [
    'Estética',
    'Psicologia',
    'Odontologia',
    'Salão de Beleza',
    'Manicure e Pedicure',
    'Depilação',
    'Maquiagem',
    'Massagem',
    'Podologia',
  ];
  List<String> homecare = ['Sim', 'Não'];

  List<String> open = [
    'De seg a sex, exceto feriados',
    'De seg  sex, incluso feriados',
    'De seg a sáb, exceto feriados',
    'De seg a sáb, incluso feriados',
    'Todos os dias, exceto feriados',
    'Todos os dias, incluso feriados',
    'Apenas nos finais de semana'
  ];
  List<String> payment = [
    'Dinheiro, cartão e pix',
    'Dinheiro e pix',
    'Dinheiro e cartão'
  ];

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var locationController = TextEditingController();
  var streetController = TextEditingController();
  var neighborhoodController = TextEditingController();
  var numberController = TextEditingController();
  var referenceController = TextEditingController();

  RxString categoryValue = 'Maquiagem'.obs;
  RxString homecareValue = 'Não'.obs;
  RxString openValue = 'De seg a sex, exceto feriados'.obs;
  RxString paymentValue = 'Dinheiro, cartão e pix'.obs;

  void toRegisterAddress() {
    Get.toNamed(Routes.kRegisterStoreAddress);
  }

  void toRegisterInformation() {
    Get.toNamed(Routes.kRegisterStoreInfo);
  }

  void toRegisterName() {
    Get.toNamed(Routes.kRegisterStoreName);
  }

  Future registerStore() async {
    String _name = nameController.text;
    String _email = emailController.text;
    String _password = passwordController.text;
    String _location = locationController.text;
    String _neighborhood = neighborhoodController.text;
    String _street = streetController.text;
    String _number = numberController.text;
    String _reference = referenceController.text;
    String _category = categoryValue.value;
    bool _homecare = homecareValue.value == 'Sim' ? true : false;
    String _open = openValue.value;
    String _payment = paymentValue.value;

    try {
      final MutationOptions options = MutationOptions(
        document: gql(createStore),
        variables: <String, dynamic>{
          'name': _name,
          'email': _email,
          'password': _password,
          'location': _location,
          'street': _street,
          'neighborhood': _neighborhood,
          'number': _number,
          'reference': _reference,
          'category': _category,
          'homecare': _homecare,
          'open': _open,
          'payment': _payment
        },
      );
      await _client.mutate(options);
      _launchLink();
    } catch (e) {}
  }

  Future _launchLink() async {
    if (await canLaunch(urlPaymentLink)) {
      await launch(urlPaymentLink, forceWebView: false, forceSafariVC: false);
    }
  }
}
