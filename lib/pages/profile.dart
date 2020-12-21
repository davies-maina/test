import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/ReusableWidgets.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: kMainBgColor,
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    invertedCorners('Mis casos', 'silla.png'),
                    invertedCorners('Notifications', 'silla.png'),
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    invertedCorners('Liamanos', 'silla.png'),
                    invertedCorners('Whatsapp', 'silla.png'),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    invertedCorners('abogadapilarramos@gmail.com', 'silla.png')
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [invertedCorners('Cerrar Sesión', 'silla.png')],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
