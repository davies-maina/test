import 'package:flutter/material.dart';
import 'package:pilar/constants.dart';

AppBar header(context,
    {bool isAppTitle = false,
    String currentPageTitle,
    hideBackButton = false}) {
  return AppBar(
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    automaticallyImplyLeading: hideBackButton ? false : true,
    title: Container(
      padding: EdgeInsets.only(top: 30.0),
      child: Text(
        isAppTitle ? 'Name of app' : currentPageTitle,
        style: TextStyle(
            color: KTitleColor,
            fontFamily: isAppTitle ? 'Comfortaa-Regular' : 'Overlock-Regular',
            fontSize: isAppTitle ? 45.0 : 22.0),
        overflow: TextOverflow.ellipsis,
      ),
    ),
    centerTitle: true,
    backgroundColor: KTitleBgColor,
  );
}
