import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pilar/widgets/ReusableImageTextOverlay.dart';

import '../constants.dart';
import '../svg.dart';
import '../widgets/ReusableContentContainer.dart';
import '../widgets/ReusableContentContainer.dart';
import '../widgets/ReusableHeaderAppBar.dart';

class ArticlesPage extends StatefulWidget {
  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          header(context, isAppTitle: false, currentPageTitle: 'Accidentes'),
      body: Container(
        color: kMainBgColor,
        padding: EdgeInsets.only(top: 20, bottom: 10, left: 50, right: 50),
        child: ListView(
          children: [
            Row(
              children: [
                imageTextOverlay(),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: contentContainer(
                      text:
                          'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                      left: 0,
                      right: 0,
                      top: 10,
                      bottom: 10),
                ),
              ],
            ),
            Divider(),
            SvgPicture.string(
              hrLine,
              allowDrawingOutsideViewBox: true,
            ),
            Divider(),
            Row(
              children: [
                imageTextOverlay(),
                Expanded(
                  child: contentContainer(
                      text:
                          'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                      left: 0,
                      right: 0,
                      top: 10,
                      bottom: 10),
                ),
              ],
            ),
            Divider(),
            SvgPicture.string(
              hrLine,
              allowDrawingOutsideViewBox: true,
            ),
            Divider(),
            Row(
              children: [
                Expanded(
                  child: contentContainer(
                      text:
                          'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                      left: 0,
                      right: 0,
                      top: 10,
                      bottom: 10),
                ),
                imageTextOverlay(),
              ],
            ),
            Divider(),
            SvgPicture.string(
              hrLine,
              allowDrawingOutsideViewBox: true,
            ),
            Divider(),
            Row(
              children: [
                imageTextOverlay(),
                Expanded(
                  child: contentContainer(
                      text:
                          'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                      left: 0,
                      right: 0,
                      top: 10,
                      bottom: 10),
                ),
              ],
            ),
            Divider(),
            SvgPicture.string(
              hrLine,
              allowDrawingOutsideViewBox: true,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
