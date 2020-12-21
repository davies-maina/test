import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

Column generateListWithHrLine(String title) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: Text(
              title,
              softWrap: true,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: kSecondaryFont,
                  fontSize: 14),
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 14,
              ),
              onPressed: null),
        ],
      ),
      SvgPicture.string(
        'asd',
        allowDrawingOutsideViewBox: true,
      ),
    ],
  );
}
