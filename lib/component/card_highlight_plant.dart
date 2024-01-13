import 'package:agri_guard/theme/app_colors.dart';
import 'package:agri_guard/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CardHighlightPlant extends StatefulWidget {
  const CardHighlightPlant({Key? key}) : super(key: key);

  @override
  State<CardHighlightPlant> createState() => _CardHighlightPlantState();
}

class _CardHighlightPlantState extends State<CardHighlightPlant> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tanaman', style: AppTextStyle.appTitlew700s18(color: AppColors.primaryBlackColor),),
              GestureDetector(
                onTap: (){},
                child: Text('Tampilkan Semua', style: AppTextStyle.appTitlew500s12(color: AppColors.primaryColor),),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 145,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/tanaman.png'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12))
                  ),
                  child: Container(
                    margin: EdgeInsets.all(12),
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Selada',
                          style: AppTextStyle.appTitlew700s18(color: Colors.white)
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 6,
                          height: 6,
                          decoration: const ShapeDecoration(
                            shape: OvalBorder(
                              side: BorderSide(width: 1, color: Color(0xFFF9F9F9)),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '2 bulan',
                          style: AppTextStyle.appTitlew500s12(color: Colors.white)
                        ),
                      ],
                    ),
                  ),
                ),
                // ClipRRect(child: Image.asset('assets/tanaman.png'), borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)),
                          color: AppColors.backgroundYellow.withOpacity(0.1)
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Cahaya Matahari', style: AppTextStyle.appTitlew500s12(color: AppColors.primaryGreyColor)),
                                ImageIcon(AssetImage('assets/icons/info.png'), color: AppColors.primaryGreyColor, size: 12)
                              ],
                            ),
                            Image.asset('assets/sun.png', height: 64, width: 64),
                            Text('Medium', style: AppTextStyle.appTitlew700s14(color: AppColors.backgroundYellow),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(12)),
                            color: AppColors.backgroundBlue.withOpacity(0.1)
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Tingkat Air', style: AppTextStyle.appTitlew500s12(color: AppColors.primaryGreyColor)),
                                ImageIcon(AssetImage('assets/icons/info.png'), color: AppColors.primaryGreyColor, size: 12)
                              ],
                            ),
                            Image.asset('assets/water.png', height: 64, width: 64),
                            Text('40%', style: AppTextStyle.appTitlew700s14(color: AppColors.backgroundBlue),)
                          ],
                        ),
                      ),
                    ),                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
