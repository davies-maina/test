import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pilar/constants.dart';

Container graphicalPart(String title, String outSvg, String inSvg) {
  return Container(
    padding: EdgeInsets.only(top: 20),
    child: Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.string(
          outSvg,
          allowDrawingOutsideViewBox: true,
        ),
        SizedBox(
          width: 89.0,
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Overlock-Regular',
              fontSize: 14,
              color: KTitleColor,
              height: 1.3571428571428572,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    ),
  );
}
