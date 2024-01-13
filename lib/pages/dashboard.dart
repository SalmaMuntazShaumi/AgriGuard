import 'package:agri_guard/component/card_highlight_plant.dart';
import 'package:agri_guard/component/card_plant_monitor.dart';
import 'package:agri_guard/component/chip.dart';
import 'package:agri_guard/theme/app_colors.dart';
import 'package:agri_guard/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100)
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icons/logo_horizontal.png', width: 132),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackgroundColor,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: ClipRRect(child: ImageIcon(AssetImage('assets/icons/notif.png'), color: AppColors.primaryGreyColor, size: 24)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        children: [
                          ImageIcon(const AssetImage('assets/icons/search.png'), size: 20, color: AppColors.primaryGreyColor),
                          const SizedBox(width: 12),
                          Text('Cari tumbuhan', style: AppTextStyle.appTitlew400s13(color: AppColors.primaryGreyColor),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.primaryColor,
                    ),
                    child: const ImageIcon(AssetImage('assets/icons/filter.png'), color: Colors.white, size: 24),
                  )
                ],
              ),
            ),
            SizedBox(height: 12),
            CardHighlightPlant(),
            SizedBox(height: 12),
            CardPlantMonitor(),
            SizedBox(height: 80)
          ],
        ),
      )
    );
  }
}
