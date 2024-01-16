import 'package:agri_guard/component/custom_field_password.dart';
import 'package:agri_guard/component/tab_bar.dart';
import 'package:agri_guard/pages/section/login.dart';
import 'package:agri_guard/pages/section/regis.dart';
import 'package:agri_guard/theme/app_colors.dart';
import 'package:agri_guard/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'custom_field_email.dart';

class TabBarLoginRegis extends StatefulWidget {
  const TabBarLoginRegis({Key? key}) : super(key: key);

  @override
  State<TabBarLoginRegis> createState() => _TabBarLoginRegisState();
}

class _TabBarLoginRegisState extends State<TabBarLoginRegis> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.primaryBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Image.asset('assets/icons/logo_horizontal.png',
                  width: 160, height: 40, alignment: Alignment.topLeft),
              const SizedBox(height: 24),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12),
                decoration: ShapeDecoration(
                  color: AppColors.primaryWhiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Masuk aplikasi',
                        style: AppTextStyle.appTitlew700s18()),
                    const SizedBox(height: 2),
                    Text('Pilih opsi untuk mengakses aplikasi AgriGuard',
                        style: AppTextStyle.appTitlew400s13()),
                    const SizedBox(height: 16),
                    Container(
                      height: 62,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        color: AppColors.primaryBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: TabBar(
                        controller: tabController,
                        indicator: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        labelStyle: AppTextStyle.appTitlew800s14(
                            color: AppColors.primaryWhiteColor),
                        unselectedLabelColor: AppColors.primaryGreyColor,
                        unselectedLabelStyle: AppTextStyle.appTitlew500s14(
                            color: Colors.black),
                        tabs: [
                          Tab(text: 'Login'),
                          Tab(text: 'Daftar'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: [
                      LoginSection(),
                      RegisSection()
                    ]
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
