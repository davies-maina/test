import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pilar/pages/thirdpage.dart';
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
        children: <Widget>[FirstPage(), SecondPage(), ThirdPage()],
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
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.title)),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit))
          ]),
    );
  }
}
