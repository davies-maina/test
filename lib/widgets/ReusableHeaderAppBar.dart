import 'package:flutter/material.dart';
import 'package:pilar/constants.dart';

import '../constants.dart';

AppBar header(context,
    {bool isAppTitle = false,
    String currentPageTitle,
    hideBackButton = false}) {
  return AppBar(
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    // automaticallyImplyLeading: hideBackButton ? false : true,
    leading: hideBackButton
        ? null
        : IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
    title: Container(
      padding: EdgeInsets.only(top: 30.0),
      child: Text(
        isAppTitle ? 'Name of app' : currentPageTitle,
        style: TextStyle(
            color: kTitleColor,
            fontFamily: isAppTitle ? kPrimaryFont : kSecondaryFont,
            fontSize: isAppTitle ? 45.0 : 22.0),
        overflow: TextOverflow.ellipsis,
      ),
    ),
    centerTitle: true,
    backgroundColor: kTitleBgColor,
  );
}
