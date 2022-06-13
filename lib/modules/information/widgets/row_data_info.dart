import 'package:adove/modules/information/widgets/card_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowDataInfo extends StatelessWidget {
  const RowDataInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Flexible(
          child: CardDataWidget(
            title: 'Brasil está em 1º',
            subtitle: 'em consumo de procedimentos estéticos, em todo o mundo',
          ),
        ),
        Flexible(
          child: CardDataWidget(
            title: 'O 2º país do mundo',
            subtitle: 'que mais pesquisa sobre beleza, bem-estar e estética, na web',
          ),
        ),
        Flexible(
          child: CardDataWidget(
            title: '57% da população',
            subtitle:
                'disse que cuidará mais da saúde e bem-estar, após a pandemia',
          ),
        ),
      ],
    );
  }
}
