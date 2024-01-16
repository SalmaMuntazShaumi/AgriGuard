import 'package:agri_guard/component/card_thread_post.dart';
import 'package:agri_guard/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../component/chip.dart';
import '../theme/app_colors.dart';

class ThreadPage extends StatefulWidget {
  const ThreadPage({Key? key}) : super(key: key);

  @override
  State<ThreadPage> createState() => _ThreadPageState();
}

class _ThreadPageState extends State<ThreadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(12),
          children: [
            Row(
              children: [
                ChipComponent(backgroundColor: AppColors.backgroundGreen.withOpacity(0.15), assetIcon: 'assets/icons/pinMaps.png',iconsColor: AppColors.darkPrimary,text: 'Bogor, Indonesia'),
                const SizedBox(width: 12),
                ChipComponent(backgroundColor: AppColors.backgroundYellow.withOpacity(0.15), assetIcon: 'assets/icons/sun.png', iconsColor: AppColors.backgroundYellow,text: 'Terik, 33°C'),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              width: MediaQuery.of(context).size.width,
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset('assets/profile1.png'),
                        const SizedBox(width: 12),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Samuel', style: AppTextStyle.appTitlew700s16(color: AppColors.primaryBlackColor)),
                              const SizedBox(height: 2),
                              GestureDetector(
                                onTap: (){

                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: AppColors.primaryBackgroundColor
                                  ),
                                  child: Row(
                                    children: [
                                      Text('Lihat profile saya', style: AppTextStyle.appTitlew400s10(color: AppColors.primaryGreyColor)),
                                      const SizedBox(width: 4),
                                      ImageIcon(AssetImage('assets/icons/arrow.png'), size: 14, color: AppColors.primaryColor)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: AppColors.primaryBackgroundColor,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: ClipRRect(child: ImageIcon(AssetImage('assets/icons/message.png'), color: AppColors.primaryGreyColor, size: 24)),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(100)),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: ImageIcon(AssetImage('assets/icons/edit.png'), size: 24, color: AppColors.primaryWhiteColor),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Utas Tani', style: AppTextStyle.appTitlew700s20(color: AppColors.primaryBlackColor)),
                  const SizedBox(height: 12),
                  CardThread(),
                  const SizedBox(height: 12),
                  CardThread(),
                  const SizedBox(height: 12),
                  CardThread(),
                  SizedBox(height: 80)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
