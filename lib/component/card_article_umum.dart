import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class CardArtikelUmum extends StatefulWidget {
  const CardArtikelUmum({Key? key}) : super(key: key);

  @override
  State<CardArtikelUmum> createState() => _CardArtikelUmumState();
}

class _CardArtikelUmumState extends State<CardArtikelUmum> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: AppColors.primaryWhiteColor,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: 125,
                child: Column(
                  children: [
                    Text('tantangan pertanian di masa depan', style: AppTextStyle.appTitlew600s16(color: AppColors.primaryBlackColor)),
                    const SizedBox(height: 8),
                    Text('Penggabungan inovasi modern dan kearifan lokal menjadi fondasi penting untuk mencapai hasil yang optimal dalam menghadapi tantangan pertanian masa depan.', style: AppTextStyle.appTitlew400s10(color: AppColors.primaryGreyColor), overflow: TextOverflow.ellipsis, maxLines: 2),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.primaryBackgroundColor
                      ),
                      child: Row(
                        children: [
                          const ImageIcon(AssetImage('assets/icons/clock.png'), size: 14),
                          const SizedBox(width: 4),
                          Text('1 menit lalu', style: AppTextStyle.appTitlew400s10(color: AppColors.primaryGreyColor))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: 16),
            Image.asset('assets/tanaman1.png', width: 163, height: 125,)
          ],
        ),
      );
  }
}
