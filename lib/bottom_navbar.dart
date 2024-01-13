import 'dart:ui';

import 'package:agri_guard/theme/app_colors.dart';
import 'package:agri_guard/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'pages/dashboard.dart';
import 'pages/article.dart';
import 'pages/detectCam.dart';
import 'pages/settings.dart';
import 'pages/thread.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;
    controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        const DashboardPage(),
        const ArticlePage(),
        const CamDetectPage(),
        const ThreadPage(),
        const SettingsPage(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const ImageIcon(AssetImage('assets/icons/home.png')),
          title: ("Beranda"),
          textStyle: AppTextStyle.appTitlew700s10(color: Colors.red),
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: AppColors.primaryGreyColor,
        ),
        PersistentBottomNavBarItem(
          icon: const ImageIcon(AssetImage('assets/icons/article.png')),
          title: ("Article"),
          textStyle: AppTextStyle.appTitlew700s10(),
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: AppColors.primaryGreyColor,
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset('assets/icons/camScan.png', height: 32, width: 32),
          activeColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: const ImageIcon(AssetImage('assets/icons/thread.png')),
          title: ("Utas Tani"),
          textStyle: AppTextStyle.appTitlew700s10(),
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: AppColors.primaryGreyColor,
        ),
        PersistentBottomNavBarItem(
          icon: const ImageIcon(AssetImage('assets/icons/settings.png')),
          title: ("Pengaturan"),
          textStyle: AppTextStyle.appTitlew700s10(),
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: AppColors.primaryGreyColor,
        ),
      ];
    }

    return PersistentTabView(
      navBarHeight: 70,
      margin: EdgeInsets.all(0),
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Color(0xffFAFAFA), // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      popActionScreens: PopActionScreensType.all,
      bottomScreenMargin: 0.0,
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}