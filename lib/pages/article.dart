import 'package:agri_guard/component/card_article_popular.dart';
import 'package:agri_guard/pages/section/article_umum.dart';
import 'package:agri_guard/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../component/chip.dart';
import '../theme/app_colors.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabControllerArticle = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: AppColors.primaryBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(12),
            height: MediaQuery.of(context).size.height * 1.7,
            child: Column(
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
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: AppColors.primaryBackgroundColor,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: ClipRRect(child: ImageIcon(AssetImage('assets/icons/search.png'), color: AppColors.primaryGreyColor, size: 24)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: AppColors.primaryWhiteColor,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Artikel Terpopuler', style: AppTextStyle.appTitlew700s18(color: AppColors.primaryBlackColor)),
                      const SizedBox(height: 12),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Wrap(
                          direction: Axis.horizontal,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: const [
                            CardPopularArticle(),
                            SizedBox(width: 8),
                            CardPopularArticle(),
                            SizedBox(width: 8),
                            CardPopularArticle(),
                            SizedBox(width: 8),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: AppColors.primaryWhiteColor,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Artikel Santai', style: AppTextStyle.appTitlew700s18(color: AppColors.primaryBlackColor)),
                      const SizedBox(height: 4),
                      Text('Pilih artikel santai yang ingin dibaca berdasarkan kategori tabs dibawah ini.', style: AppTextStyle.appTitlew400s12(color: AppColors.primaryGreyColor)),
                      const SizedBox(height: 12),
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(8),
                        decoration: ShapeDecoration(
                          color: AppColors.primaryBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: TabBar(
                          controller: tabControllerArticle,
                          indicator: BoxDecoration(
                              color: AppColors.primaryWhiteColor,
                              borderRadius: BorderRadius.circular(100)),
                          labelStyle: AppTextStyle.appTitlew800s14(
                              color: AppColors.primaryColor),
                          labelColor: AppColors.primaryColor,
                          unselectedLabelColor: AppColors.primaryGreyColor,
                          unselectedLabelStyle: AppTextStyle.appTitlew500s14(),
                          tabs: [
                            Tab(
                                child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                ImageIcon(AssetImage('assets/icons/article.png')),
                                SizedBox(width: 4),
                                Text('Umum'),
                              ],
                            )),
                            Tab(child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                ImageIcon(AssetImage('assets/icons/hama.png')),
                                SizedBox(width: 4),
                                Text('Hama'),
                              ],
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: TabBarView(
                      controller: tabControllerArticle,
                      children: [
                        ArtikelUmumSection(),
                        ArtikelUmumSection()
                      ]
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
