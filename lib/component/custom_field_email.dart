import 'package:agri_guard/theme/app_colors.dart';
import 'package:agri_guard/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String hintText;
  String label;
  TextEditingController controller;
  CustomTextField({Key? key, required this.hintText, required this.controller, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: AppTextStyle.appTitlew600s14(color: AppColors.primaryBlackColor)),
          const SizedBox(height: 4),
          TextField(
            controller: controller,
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.primaryBackgroundColor,
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                hintText: hintText,
                hintStyle: AppTextStyle.appTitlew400s14(color: AppColors.primaryGreyColor),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryBackgroundColor),
                    borderRadius: BorderRadius.circular(6.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryBackgroundColor),
                    borderRadius: BorderRadius.circular(6.0))),
          ),
        ],
      ),
    );
  }
}
