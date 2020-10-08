import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pilar/constants.dart';
import 'package:pilar/pages/secondpage.dart';
import 'package:pilar/svg.dart';
import 'package:pilar/widgets/ReusableContentContainer.dart';
import 'package:pilar/widgets/ReusableGraphical.dart';
import 'package:pilar/widgets/ReusableHeaderAppBar.dart';
import 'package:pilar/widgets/ReusableSecondaryHeader.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context,
          isAppTitle: false,
          currentPageTitle: 'ABOGADOS ESPECIALISTAS',
          hideBackButton: true),
      body: Container(
        color: kMainBgColor,
        child: Column(
          children: [
            contentContainer(
                'En el despacho de Abogado Extranjería Madrid, contamos con abogados especialistas en materia de derecho de inmigración.En la situación actual española, la migración se está intensificando por momentos, por ello es un tema con el que convivimos día y día. Gracias a ello y tras años de trabajo y experiencia, sabemos cómo obtener resultados llenos de profesionalidad y gratitud para nuestro cliente.'),
            Divider(),
            secondaryTitle('Especialidades'),
            contentContainer(
                'En el despacho de Abogado Extranjería Madrid, contamos con abogados especialistas en materia de derecho de inmigración.'),
            Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      graphicalPart('Incapacidad permaanente', boxSvg, null),
                      graphicalPart('Accidentes', boxSvg, null),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      graphicalPart('Despidos', boxSvg, null),
                      graphicalPart('Laboral', boxSvg, null),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            secondaryTitle('RECURSOS LABORALES'),
            contentContainer(
                'Ab illo tempore, ab est sed immemorabili. Quo usque tandem abutere, Catilina, patientia nostra? Pellentesque habitant morbi tristique senectus et netus, abio vel iudice vincam, sunt in culpa qui officia. Mercedem aut nummos unde unde extricat, amaras.'),
          ],
        ),
      ),
    );
  }
}
