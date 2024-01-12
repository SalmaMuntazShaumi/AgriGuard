import 'package:agri_guard/component/chip.dart';
import 'package:agri_guard/theme/app_colors.dart';
import 'package:agri_guard/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CardPlantMonitor extends StatefulWidget {
  const CardPlantMonitor({Key? key}) : super(key: key);

  @override
  State<CardPlantMonitor> createState() => _CardPlantMonitorState();
}

class _CardPlantMonitorState extends State<CardPlantMonitor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primaryWhiteColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pemantauan Tanaman', style: AppTextStyle.appTitlew700s18(color: AppColors.primaryBlackColor)),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12)
            ),
            child: Image.asset('assets/pemantauan_tanaman.png', fit: BoxFit.fill),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cabai Rawit', style: AppTextStyle.appTitlew700s14(color: AppColors.primaryBlackColor),),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors.primaryBackgroundColor
                ),
                child: Row(
                  children: [
                    ImageIcon(AssetImage('assets/icons/clock.png'), color: AppColors.primaryGreyColor, size: 14),
                    const SizedBox(width: 4),
                    Text('12:05', style: AppTextStyle.appTitlew500s12(color: AppColors.primaryGreyColor),)
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 12),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text('Terdeteksi terdapat hama pada tumbuhan Anda. Gejala yang terlihat dapat berupa daun yang berlubang, bercak kuning, atau bintik-bintik gelap.',
            style: AppTextStyle.appTitlew400s13(color: AppColors.primaryGreyColor),
              overflow: TextOverflow.clip,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                children: [
                      ChipComponent(assetIcon: 'assets/icons/weather.png', text: '8 jam', backgroundColor: AppColors.primaryBackgroundColor, iconsColor: AppColors.primaryGreyColor),
                      const SizedBox(width: 8),
                      ChipComponent(assetIcon: 'assets/icons/water.png', text: '12 jam lalu', backgroundColor: AppColors.primaryBackgroundColor, iconsColor: AppColors.primaryGreyColor),
                      const SizedBox(width: 8),
                      ChipComponent(assetIcon: 'assets/icons/termometer.png', text: 'Lembab', backgroundColor: AppColors.primaryBackgroundColor, iconsColor: AppColors.primaryGreyColor),
                      const SizedBox(width: 8),
                      ChipComponent(assetIcon: 'assets/icons/condition.png', text: 'Bahaya', backgroundColor: AppColors.primaryBackgroundColor, iconsColor: AppColors.primaryGreyColor)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
