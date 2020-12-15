import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pilar/models/User.dart';
import 'package:pilar/pages/ArticlesPage.dart';
import 'package:pilar/pages/login.dart';
import 'package:pilar/pages/profile.dart';
import 'package:pilar/pages/thirdPage.dart';
import 'package:pilar/presentations/my_custom_icons_icons.dart';
import 'constants.dart';
import 'pages/secondpage.dart';
import 'pages/firstpage.dart';

// import CustomIcons from 'presentations/my_flutter_app_icons.dart';

class PageControl extends StatefulWidget {
  @override
  _PageControlState createState() => _PageControlState();
}

class _PageControlState extends State<PageControl> {
  PageController pageController;
  int getPageIndex = 0;

  void initState() {
    super.initState();
    pageController = PageController();
  }

  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  whenPageChanges(int pageIndex) {
    setState(() {
      this.getPageIndex = pageIndex;
    });
  }

  changePage(int pageIndex) {
    pageController.animateToPage(pageIndex,
        duration: Duration(microseconds: 400), curve: Curves.bounceInOut);
  }

  final UserModel user = UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      body: PageView(
        children: <Widget>[
          FirstPage(),
          SecondPage(),
          LoginPage(),
          // ThirdPage(),
          // ArticlesPage(),
          // ProfilePage()
        ],
        controller: pageController,
        onPageChanged: whenPageChanges,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: kTitleBgColor,
          currentIndex: getPageIndex,
          onTap: changePage,
          activeColor: kTitleColor,
          inactiveColor: kTextContentColor,
          items: [
            BottomNavigationBarItem(icon: Icon(MyCustomIcons.icon1)),
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.title)),
            // BottomNavigationBarItem(icon: Icon(Icons.ac_unit)),
            // BottomNavigationBarItem(icon: Icon(Icons.contact_phone)),
            // BottomNavigationBarItem(icon: Icon(Icons.verified_user)),
          ]),
    );
  }
}
