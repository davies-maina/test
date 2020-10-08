import 'package:flutter/material.dart';
import 'package:pilar/constants.dart';

import '../constants.dart';

Container secondaryTitle(String title) {
  return Container(
    padding: EdgeInsets.only(top: 5, bottom: 5),
    width: double.infinity,
    color: kTitleBgColor,
    child: Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: kPrimaryFont,
            fontSize: 14,
            color: const Color(0xfff5d991),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
