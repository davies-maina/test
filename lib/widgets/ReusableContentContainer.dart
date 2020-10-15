import 'package:flutter/material.dart';
import 'package:pilar/constants.dart';

import '../constants.dart';

SizedBox contentContainer(
    {String text, double top, double bottom, double right, double left}) {
  return SizedBox(
    child: SingleChildScrollView(
        padding: EdgeInsets.only(left: left, right: right, top: top),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: kSecondaryFont,
            fontSize: 14,
            color: const Color(0xffffffff),
            height: 1.3571428571428572,
          ),
          textAlign: TextAlign.left,
        )),
  );
}
