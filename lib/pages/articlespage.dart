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
        child: Column(
          children: [
            Expanded(child: imageTextOverlay()),
            // padding: EdgeInsets.only(left: 50, right: 50, top: 20),
            contentContainer(
                text:
                    'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objeto de reclamación',
                left: 0,
                right: 0,
                top: 10,
                bottom: 10),

            // SvgPicture.string(
            //   hrLine,
            //   allowDrawingOutsideViewBox: true,
            // ),
            Divider(),
            SvgPicture.string(
              hrLine,
              allowDrawingOutsideViewBox: true,
            ),
            Divider(),
            Row(
              children: [
                Expanded(child: imageTextOverlay()),
                Expanded(
                    flex: 1,
                    child: contentContainer(
                        text:
                            'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objet',
                        top: 0,
                        right: 0,
                        left: 10,
                        bottom: 0))
              ],
            ),
            Divider(),
            SvgPicture.string(
              hrLine,
              allowDrawingOutsideViewBox: true,
            ),

            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: contentContainer(
                        text:
                            'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objet',
                        top: 0,
                        right: 0,
                        left: 10,
                        bottom: 0)),
                Expanded(child: imageTextOverlay()),
              ],
            ),
            Row(
              children: [
                Expanded(child: imageTextOverlay()),
                Expanded(
                    flex: 1,
                    child: contentContainer(
                        text:
                            'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objet',
                        top: 0,
                        right: 0,
                        left: 10,
                        bottom: 0)),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: contentContainer(
                        text:
                            'La confianza en el director del banco ha ocasionado grandes perjuicios económicos a muchas familiasDe hecho, ha sido esta táctica la que ha originado muchas de las cláusulas suelo hoy objet',
                        top: 0,
                        right: 0,
                        left: 10,
                        bottom: 0)),
                Expanded(child: imageTextOverlay()),
              ],
            ),

            // Expanded(child: imageTextOverlay())
          ],
        ),
      ),
    );
  }
}
