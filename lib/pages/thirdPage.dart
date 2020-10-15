import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pilar/widgets/ReusableListView.dart';

import '../constants.dart';
import '../constants.dart';
import '../widgets/ReusableContentContainer.dart';
import '../widgets/ReusableHeaderAppBar.dart';
import '../widgets/ReusableSecondaryHeader.dart';
import '../widgets/ReusableSecondaryHeader.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context,
          currentPageTitle: 'Documentos y plantillas', hideBackButton: false),
      body: Container(
        color: kMainBgColor,
        child: Column(
          children: [
            contentContainer(
                text:
                    'Aquí podrás encontrar modelos ya creados para rellenar con tus datos para hacer mas fácil tu vida burocrática',
                left: 50,
                right: 50,
                top: 20,
                bottom: 20),
            Divider(),
            secondaryTitle('Trabajo y formación'),
            Divider(),
            Expanded(
              child: ListView(
                children: [
                  generateListWithHrLine('Contrato de trabajo indefinido'),
                  generateListWithHrLine('Contrato de trabajo temporal'),
                  generateListWithHrLine('Contrato de trabajo formativo'),
                  generateListWithHrLine('Contrato de trabajo de relevo'),
                  generateListWithHrLine('Contrato de trabajo freelance'),
                  generateListWithHrLine('Contrato de trabajo freelance'),
                ],
              ),
            ),
            secondaryTitle('Vivienda y bienes'),
            Divider(),
            Expanded(
              child: ListView(
                children: [
                  generateListWithHrLine('Contrato de trabajo indefinido'),
                  generateListWithHrLine('Contrato de trabajo temporal'),
                  generateListWithHrLine('Contrato de trabajo formativo'),
                  generateListWithHrLine('Contrato de trabajo de relevo'),
                  generateListWithHrLine('Contrato de trabajo freelance'),
                  generateListWithHrLine('Contrato de trabajo freelance'),
                  generateListWithHrLine('Contrato de trabajo freelance'),
                  generateListWithHrLine('Contrato de trabajo freelance'),
                  generateListWithHrLine('Contrato de trabajo freelance'),
                  generateListWithHrLine('Contrato de trabajo freelance'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
