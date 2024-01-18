import 'package:agri_guard/theme/app_colors.dart';
import 'package:agri_guard/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CardPopularArticle extends StatefulWidget {
  const CardPopularArticle({Key? key}) : super(key: key);

  @override
  State<CardPopularArticle> createState() => _CardPopularArticleState();
}

class _CardPopularArticleState extends State<CardPopularArticle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.primaryBackgroundColor,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Image.asset('assets/tanaman_article.png'),
          // const SizedBox(height: 12),
          Text('tantangan pertanian di masa depan', style: AppTextStyle.appTitlew600s16(color: AppColors.primaryBlackColor)),
          const SizedBox(height: 8),
          Text('Penggabungan inovasi modern dan kearifan lokal menjadi fondasi penting untuk mencapai hasil yang optimal dalam menghadapi tantangan pertanian masa depan.', style: AppTextStyle.appTitlew400s10(color: AppColors.primaryGreyColor), overflow: TextOverflow.ellipsis, maxLines: 2),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primaryWhiteColor,
              borderRadius: BorderRadius.circular(100)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/icons/love.png', width: 14, height: 14, color: AppColors.primaryGreyColor,),
                const SizedBox(width: 4),
                Text('200 orang menyukai artikel ini', style: AppTextStyle.appTitlew400s10(color: AppColors.primaryGreyColor),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
