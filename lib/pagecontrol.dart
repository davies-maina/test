import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pilar/pages/articlespage.dart';
import 'package:pilar/pages/login.dart';
import 'package:pilar/pages/profile.dart';
import 'package:pilar/pages/thirdPage.dart';
import 'constants.dart';
import 'pages/secondpage.dart';
import 'pages/firstpage.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBgColor,
      body: PageView(
        children: <Widget>[
          FirstPage(),
          SecondPage(),
          ThirdPage(),
          ArticlesPage(),
          LoginPage(),
          ProfilePage()
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
            BottomNavigationBarItem(icon: Icon(Icons.accessibility)),
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.title)),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit)),
            BottomNavigationBarItem(icon: Icon(Icons.contact_phone)),
            BottomNavigationBarItem(icon: Icon(Icons.verified_user)),
          ]),
    );
  }
}
