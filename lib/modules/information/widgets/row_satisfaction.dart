import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:flutter/material.dart';

class RowSatisfaction extends StatelessWidget {
  const RowSatisfaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: _testimonial(
              'assets/images/avatar-register.jpg',
              '\"Aprendi que o mais importante na minha área de atuação é estar'
                  ' antenada, e o Adove me proporciona isso e muito mais"',
              'Rafaela Monteiro, proprietária de uma clínica de Estética',
            ),
          ),
          Flexible(
            child: _testimonial(
              'assets/images/avatar-login.jpg',
              '\"Com o Adove, economizei mais de R\$ 1200 e contratei um dentista júnior'
                  ' para me auxiliar no dia a dia com os pacientes\"',
              'Renan Baldoni, proprietário de uma clínica de Odontologia',
            ),
          ),
          Flexible(
            child: _testimonial(
              'assets/images/avatar-register.jpg',
              '\"Sou lash designer e ainda não possuo um local físico.'
                  ' O Adove permite que eu atenda minhas clientes indo até suas casas"',
              'Bruna Romero, iniciando um empreendimento',
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget _testimonial(String avatar, String phrase, String author) {
    return Center(
      child: Column(
        children: [
          const Divider(),
          const Divider(),
          Padding(
            padding: Sizes.isMobile()
                  ? const EdgeInsets.all(0.0)
                  : const EdgeInsets.all(16.0),
            child: ImageAvatarWidget(path: avatar),
          ),
          TextWidget(
            text: phrase,
            textSize: Sizes.isMobile() ? Sizes.h1Mobile - 6 : Sizes.h1Site - 10,
            alignmentDirection: Alignment.center,
            isTextAlignCenter: true,
          ),
          const Divider(),
          TextWidget(
            text: '- $author',
            textSize: Sizes.isMobile() ? Sizes.body1Mobile : Sizes.body2Site,
            alignmentDirection: Alignment.center,
            isTextAlignCenter: true,
          ),
          const Divider(),
          const Divider(),
        ],
      ),
    );
  }
}
