import 'package:agri_guard/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class CardThread extends StatefulWidget {
  const CardThread({Key? key}) : super(key: key);

  @override
  State<CardThread> createState() => _CardThreadState();
}

class _CardThreadState extends State<CardThread> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.primaryBackgroundColor,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/profile2.png', width: 40,),
              const SizedBox(width: 12),
              Container(
                // margin: EdgeInsets.all(12),
                // alignment: Alignment.bottomRight,
                child: Row(
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        'Sobat Tani',
                        style: AppTextStyle.appTitlew700s16(color: AppColors.primaryBlackColor)
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 6,
                      height: 6,
                      decoration: ShapeDecoration(
                        shape: OvalBorder(
                          side: BorderSide(width: 1, color: AppColors.primaryGreyColor),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                        '@sobattani',
                        style: AppTextStyle.appTitlew500s12(color: AppColors.primaryGreyColor)
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 6,
                      height: 6,
                      decoration: ShapeDecoration(
                        shape: OvalBorder(
                          side: BorderSide(width: 1, color: AppColors.primaryGreyColor),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                        '1 jam',
                        style: AppTextStyle.appTitlew500s12(color: AppColors.primaryGreyColor)
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: (){
                        
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.primaryWhiteColor,
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: ImageIcon(AssetImage('assets/icons/menu.png'), color: AppColors.primaryGreyColor, size: 14),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          // Row(
          //   children: [
          //     Container(
          //       width: 2,
          //       height: MediaQuery.of(context).size.height,
          //       decoration: BoxDecoration(color: AppColors.primaryGreyColor),
          //     ),
          //     // Container(
          //     //   padding: EdgeInsets.all(8),
          //     //   decoration: BoxDecoration(
          //     //       color: AppColors.primaryBackgroundColor,
          //     //       borderRadius: BorderRadius.circular(16)
          //     //   ),
          //     //   child: Column(
          //     //     mainAxisSize: MainAxisSize.min,
          //     //     mainAxisAlignment: MainAxisAlignment.start,
          //     //     crossAxisAlignment: CrossAxisAlignment.start,
          //     //     children: [
          //     //       SizedBox(
          //     //         width: double.infinity,
          //     //         child: Text.rich(
          //     //           TextSpan(
          //     //             children: [
          //     //               TextSpan(
          //     //                 text: 'Inovasi Teknologi Pertanian:',
          //     //                 style: AppTextStyle.appTitlew600s12(color: AppColors.primaryBlackColor),
          //     //               ),
          //     //               TextSpan(
          //     //                 text: ' Masa Depan Berkelanjutan. Menjelajahi perkembangan terbaru dalam teknologi pertanian yang dapat meningkatkan produktivitas dan keberlanjutan, dari penggunaan IoT hingga kecerdasan buatan.',
          //     //                 style: AppTextStyle.appTitlew400s12(color: AppColors.primaryGreyColor),
          //     //               ),
          //     //             ],
          //     //           ),
          //     //           textAlign: TextAlign.justify,
          //     //         ),
          //     //       ),
          //     //       const SizedBox(height: 8),
          //     //       Container(
          //     //         width: double.infinity,
          //     //         height: 120,
          //     //         decoration: ShapeDecoration(
          //     //           image: DecorationImage(
          //     //             image: NetworkImage("https://via.placeholder.com/262x120"),
          //     //             fit: BoxFit.fill,
          //     //           ),
          //     //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          //     //           shadows: [
          //     //             BoxShadow(
          //     //               color: Color(0x19000000),
          //     //               blurRadius: 20,
          //     //               offset: Offset(0, 4),
          //     //               spreadRadius: 0,
          //     //             )
          //     //           ],
          //     //         ),
          //     //       ),
          //     //     ],
          //     //   ),
          //     // )
          //   ],
          // )
          const SizedBox(height: 8),
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  width: 1,
                  height: 290,
                  color: AppColors.primaryGreyColor,
                ),
                const SizedBox(width: 20),
                Container(
                  width: 290,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: AppColors.primaryWhiteColor,
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    children: [
                      Text.rich(
                        overflow: TextOverflow.clip,
                        TextSpan(
                          children: [
                            TextSpan(text: 'Inovasi Teknologi Pertanian: ', style: AppTextStyle.appTitlew600s12(color: AppColors.primaryBlackColor)),
                            TextSpan(text: 'Masa Depan Berkelanjutan. Menjelajahi perkembangan terbaru dalam teknologi pertanian yang dapat meningkatkan produktivitas dan keberlanjutan, dari penggunaan IoT hingga kecerdasan buatan.', style: AppTextStyle.appTitlew400s12(color: AppColors.primaryGreyColor)),
                          ]
                        )
                      ),
                      const SizedBox(height: 8),
                      Image.asset('assets/tanaman2.png')
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 25),
                  decoration: BoxDecoration(
                    color: AppColors.primaryWhiteColor,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage('assets/icons/love.png'), size: 16, color: AppColors.primaryGreyColor),
                      const SizedBox(width: 4),
                      Text('199', style: AppTextStyle.appTitlew500s12(color: AppColors.primaryGreyColor))
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 25),
                  decoration: BoxDecoration(
                    color: AppColors.primaryWhiteColor,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage('assets/icons/forward.png'), size: 16, color: AppColors.primaryGreyColor),
                      const SizedBox(width: 4),
                      Text('150', style: AppTextStyle.appTitlew500s12(color: AppColors.primaryGreyColor))
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 25),
                  decoration: BoxDecoration(
                    color: AppColors.primaryWhiteColor,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage('assets/icons/reply.png'), size: 16, color: AppColors.primaryGreyColor),
                      const SizedBox(width: 4),
                      Text('150', style: AppTextStyle.appTitlew500s12(color: AppColors.primaryGreyColor))
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
