import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

Container imageTextOverlay({backIcon = false}) {
  return Container(
    height: 100,
    child: Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 253.0, 190.0),
          size: Size(253.0, 190.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 144.0, 253.0, 46.0),
          size: Size(253.0, 190.0),
          pinLeft: true,
          pinRight: true,
          pinBottom: true,
          fixedHeight: true,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.37, sigmaY: 10.37),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0x00000000),
                ),
              ),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(15.0, 150.0, 236.0, 40.0),
          size: Size(253.0, 190.0),
          pinLeft: true,
          pinRight: true,
          pinBottom: true,
          fixedHeight: true,
          child: Text(
            'Reclamar o no reclamar al banco, el dilema a resolver',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 15,
              color: const Color(0xffffffff),
              height: 1.3333333333333333,
            ),
            textAlign: TextAlign.left,
          ),
        ),

        backIcon
            ? SizedBox(
                width: 34.0,
                height: 34.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 34.0, 34.0),
                      size: Size(34.0, 34.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: ClipOval(
                        child: BackdropFilter(
                          filter:
                              ImageFilter.blur(sigmaX: 18.26, sigmaY: 18.26),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0x7d000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(11.0, 5.0, 12.0, 24.0),
                      size: Size(34.0, 34.0),
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: Transform.rotate(
                        angle: 3.1416,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 12.0, 12.0),
                              size: Size(12.0, 24.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              fixedHeight: true,
                              child: SvgPicture.string(
                                '<svg viewBox="8.5 51.5 12.0 12.0" ><path transform="translate(8.5, 51.5)" d="M 0 0 L 12 12" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 12.0, 12.0, 12.0),
                              size: Size(12.0, 24.0),
                              pinLeft: true,
                              pinRight: true,
                              pinBottom: true,
                              fixedHeight: true,
                              child: SvgPicture.string(
                                '<svg viewBox="8.5 63.5 12.0 12.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 20.5, 63.5)" d="M 0 0 L 12 12" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox()

        // Container(
        //   color: Colors.black,
        //   child: IconButton(
        //       icon: Icon(
        //         Icons.arrow_back_ios,
        //         color: Colors.white,
        //       ),
        //       onPressed: () => {print('pressed')}),
        // ),
      ],
    ),
  );
}
