import 'package:flutter/material.dart';

import '../component/custom_field_email.dart';
import '../component/custom_field_password.dart';
import '../component/tab_bar.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class RegisSection extends StatefulWidget {
  const RegisSection({Key? key}) : super(key: key);

  @override
  State<RegisSection> createState() => _RegisSectionState();
}

class _RegisSectionState extends State<RegisSection> {
  TextEditingController textFieldControllerUsername = TextEditingController();
  TextEditingController textFieldControllerEmail = TextEditingController();
  TextEditingController textFieldControllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.primaryWhiteColor,
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
              hintText: 'Masukkan nama pengguna',
              controller: textFieldControllerUsername,
              label: 'Username'),
          const SizedBox(height: 12),
          CustomTextField(
              hintText: 'Masukkan email yang terdaftar',
              controller: textFieldControllerEmail,
              label: 'Email'),
          const SizedBox(height: 12),
          CustomTextFieldPassword(
              hintText: 'Masukkan password',
              controller: textFieldControllerPassword,
              label: 'Password'),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const TabBarLoginRegis()));
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Text(
                  'Daftar',
                  style: AppTextStyle.appTitlew600s16(
                      color: AppColors.primaryWhiteColor),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(children: <Widget>[
            Expanded(
                child: Divider(
                    color: AppColors.primaryGreyColor)),
            const SizedBox(width: 16),
            Text(
              "Atau",
              style: AppTextStyle.appTitlew500s14(
                  color: AppColors.primaryGreyColor),
            ),
            const SizedBox(width: 16),
            Expanded(
                child: Divider(
                    color: AppColors.primaryGreyColor)),
          ]),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.primaryBackgroundColor,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Masuk dengan Google',
                      style: AppTextStyle.appTitlew600s16(
                          color: AppColors.primaryBlackColor),
                    ),
                    const SizedBox(width: 8),
                    Image.asset('assets/icons/google.png',
                        width: 24, height: 24)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
