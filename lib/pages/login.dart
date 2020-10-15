import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../svg.dart';
import '../widgets/ReusableGraphical.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60),
      color: kMainBgColor,
      child: Column(
        children: [
          Text(
            'Logo',
            style: TextStyle(color: kTitleColor, fontSize: 40),
          ),
          SizedBox(
            height: 1.0,
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                TextField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: kTitleColor, width: 0.0),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 14.0, color: kTitleColor),
                      hintStyle: TextStyle(color: kTitleColor, fontSize: 10.0)),
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: kTitleColor, width: 0.0),
                      ),
                      labelText: 'password',
                      labelStyle: TextStyle(fontSize: 14.0, color: kTitleColor),
                      hintStyle: TextStyle(color: kTitleColor, fontSize: 10.0)),
                ),
                SizedBox(
                  height: 1.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      color: Colors.transparent,
                      textColor: kTitleColor,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: kTitleColor)),
                      child: Text(
                        'Iniciar sesión',
                        style: TextStyle(color: kTitleColor),
                      ),
                    ),
                    RaisedButton(
                      color: kTitleBgColor,
                      textColor: kTitleColor,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: kTitleColor)),
                      child: Text(
                        'Registrarse',
                        style: TextStyle(color: kTitleColor),
                      ),
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    graphicalPart('Icon 1', boxSvg, null),
                    graphicalPart('Icon 2', boxSvg, null),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
