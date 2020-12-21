import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pilar/widgets/ReusableImageTextOverlay.dart';

import '../constants.dart';
import '../widgets/ReusableWidgets.dart';

class ArticlesPage extends StatefulWidget {
  @override
  _ArticlesPageState createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, isAppTitle: false, currentPageTitle: 'Artículos'),
      body: Container(
        color: kMainBgColor,
        padding: EdgeInsets.only(top: 20, bottom: 10, left: 30, right: 30),
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
                  child: textContainer(
                    text:
                        'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                  ),
                ),
              ],
            ),
            Divider(),
            SvgPicture.string(
              'hrLine',
              allowDrawingOutsideViewBox: true,
            ),
            Divider(),
            Row(
              children: [
                imageTextOverlay(),
                Expanded(
                  child: textContainer(
                    text:
                        'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                  ),
                ),
              ],
            ),
            Divider(),
            SvgPicture.string(
              'hrLine',
              allowDrawingOutsideViewBox: true,
            ),
            Divider(),
            Row(
              children: [
                Expanded(
                  child: textContainer(
                    text:
                        'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                  ),
                ),
                imageTextOverlay(),
              ],
            ),
            Divider(),
            SvgPicture.string(
              'hrLine',
              allowDrawingOutsideViewBox: true,
            ),
            Divider(),
            Row(
              children: [
                imageTextOverlay(),
                Expanded(
                  child: textContainer(
                    text:
                        'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                  ),
                ),
              ],
            ),
            Divider(),
            SvgPicture.string(
              'hrLine',
              allowDrawingOutsideViewBox: true,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
