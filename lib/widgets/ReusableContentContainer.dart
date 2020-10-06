import 'package:flutter/material.dart';
import 'package:pilar/constants.dart';

SizedBox contentContainer(String text) {
  return SizedBox(
    child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 50, right: 50, top: 20),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Overlock-Regular',
            fontSize: 14,
            color: const Color(0xffffffff),
          ),
          textAlign: TextAlign.left,
        )),
  );
}
