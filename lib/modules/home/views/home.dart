import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const MenuWidget(),
            const Divider(),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextRenderer(
                          child: TextWidget(
                            text: 'Os melhores profissionais',
                            isTextAlignCenter: true,
                            alignmentDirection: Alignment.center,
                            textSize:
                                Sizes.isMobile() ? Sizes.h1Mobile : Sizes.h1Site,
                          ),
                        ),
                        Center(
                          child: TextRenderer(
                            child: TextWidget(
                              text: 'Os mais atualizados',
                              isTextAlignCenter: true,
                              alignmentDirection: Alignment.center,
                              textSize:
                                  Sizes.isMobile() ? Sizes.h1Mobile : Sizes.h1Site,
                              color: Colors.grey[700]!,
                            ),
                          ),
                        ),
                        TextRenderer(
                          child: TextWidget(
                            text: 'A dois cliques',
                            isTextAlignCenter: true,
                            alignmentDirection: Alignment.center,
                            textSize:
                                Sizes.isMobile() ? Sizes.h1Mobile : Sizes.h1Site,
                            color: Colors.black,
                          ),
                        ),
                        const TextRenderer(
                          child: TextWidget(
                            text: 'Manicure. Pedicure. Psicologia.',
                            isTextAlignCenter: true,
                            alignmentDirection: Alignment.center,
                          ),
                        ),
                        const TextRenderer(
                          child: TextWidget(
                            text: 'Salão de Beleza. Massagem. Maquiagem.',
                            isTextAlignCenter: true,
                            alignmentDirection: Alignment.center,
                          ),
                        ),
                        const TextRenderer(
                          child: TextWidget(
                            text: 'Estética. Odontologia. Podologia. Depilação.',
                            isTextAlignCenter: true,
                            alignmentDirection: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: ImageRenderer(
                      alt: 'Diamante',
                      child: Image.asset('assets/images/background.gif'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}