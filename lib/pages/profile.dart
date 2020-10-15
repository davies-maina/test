import 'package:flutter/material.dart';

import '../constants.dart';
import '../svg.dart';
import '../widgets/ReusableGraphical.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kMainBgColor,
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    graphicalPart('Mis casos', boxSvg, null),
                    graphicalPart('Notifications', boxSvg, null),
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    graphicalPart('Liamanos', boxSvg, null),
                    graphicalPart('Whatsapp', boxSvg, null),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    graphicalPart(
                        'abogadapilarramos@gmail.com', wideBoxSvg, null)
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [graphicalPart('Cerrar Sesión', wideBoxSvg, null)],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
