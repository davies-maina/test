import 'package:flutter/material.dart';
import 'package:pilar/constants.dart';
import 'package:pilar/pages/thirdPage.dart';
import 'package:pilar/svg.dart';
import 'package:pilar/widgets/ReusableHeaderAppBar.dart';
import 'package:pilar/widgets/ReusableGraphical.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kMainBgColor,
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                ),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      graphicalPart('Documento y plantillas', boxSvg, null),
                      graphicalPart('Accidentes', boxSvg, null),
                    ],
                  ),
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
              SizedBox(
                child: Column(
                  children: [
                    graphicalPart(
                        'Incapacidades permanenentes', wideBoxSvg, null)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
