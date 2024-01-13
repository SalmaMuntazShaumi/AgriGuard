import 'package:agri_guard/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChipComponent extends StatelessWidget {
  Color? backgroundColor, iconsColor;
  bool? isLinear;
  Color? startLinearColor, endLinearColor;
  AlignmentGeometry? beginAlignment, endAlignment;
  String? assetIcon, text;
  ChipComponent({Key? key, this.startLinearColor, this.endLinearColor, this.beginAlignment, this.endAlignment, this.isLinear, this.iconsColor, this.backgroundColor, this.assetIcon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    isLinear = true;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        color: backgroundColor,
      ),
      child: Row(
        children: [
          ImageIcon(AssetImage(assetIcon!), color: iconsColor),
          const SizedBox(width: 4),
          Text(text!, style: AppTextStyle.appTitlew500s12(),)
        ],
      ),
    );
  }
}
