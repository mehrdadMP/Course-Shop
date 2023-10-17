import 'package:course_shop/all_courses_screen.dart';
import 'package:course_shop/cart_screen.dart';
import 'package:course_shop/main_screen.dart';
import 'package:course_shop/my_app_texts.dart';
import 'package:course_shop/my_courses_screen.dart';
import 'package:course_shop/profile_settings_screen.dart';
import 'package:course_shop/settings_screen.dart';
import 'package:course_shop/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class FirstScreenNavBar extends StatelessWidget {
  const FirstScreenNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarHeight: 60,
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        boxShadow: <BoxShadow>[BoxShadow(blurRadius: 10, spreadRadius: 0)],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        colorBehindNavBar: Colors.black,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style12,
    );
  }

  List<Widget> _buildScreens() {
    return [
      MainScreen(),
      MyCoursesScreen(),
      AllCoursesScreen(),
      ProfileSettingsScreen(),
      CartScreen(),
      SettingsScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: MyAppTexts.home,
        activeColorPrimary: CourseAppTheme.appPrimaryColor,
        inactiveColorPrimary: CourseAppTheme.appsixthColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.book),
        title: MyAppTexts.myCourses,
        activeColorPrimary: CourseAppTheme.appPrimaryColor,
        inactiveColorPrimary: CourseAppTheme.appsixthColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.book_solid),
        title: MyAppTexts.allCourses,
        activeColorPrimary: CourseAppTheme.appPrimaryColor,
        inactiveColorPrimary: CourseAppTheme.appsixthColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: MyAppTexts.profile,
        activeColorPrimary: CourseAppTheme.appPrimaryColor,
        inactiveColorPrimary: CourseAppTheme.appsixthColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.cart),
        title:MyAppTexts.cart,
        activeColorPrimary: CourseAppTheme.appPrimaryColor,
        inactiveColorPrimary: CourseAppTheme.appsixthColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: MyAppTexts.cart,
        activeColorPrimary: CourseAppTheme.appPrimaryColor,
        inactiveColorPrimary: CourseAppTheme.appsixthColor,
      ),
    ];
  }
}
