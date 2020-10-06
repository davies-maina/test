import 'package:flutter/material.dart';
import 'package:pilar/constants.dart';
import 'package:pilar/svg.dart';
import 'package:pilar/widgets/ReusableHeaderAppBar.dart';
import 'package:pilar/widgets/ReusableGraphical.dart';

class TestHome extends StatefulWidget {
  @override
  _TestHomeState createState() => _TestHomeState();
}

class _TestHomeState extends State<TestHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color,
        child: Column(
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  graphicalPart('Documento y plantillas', boxSvg, null),
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
            SizedBox(
              child: Column(
                children: [
                  graphicalPart('Incapacidades permanenentes', wideBoxSvg, null)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
