import 'package:agri_guard/component/card_article_umum.dart';
import 'package:agri_guard/theme/app_colors.dart';
import 'package:agri_guard/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ArtikelUmumSection extends StatefulWidget {
  const ArtikelUmumSection({Key? key}) : super(key: key);

  @override
  State<ArtikelUmumSection> createState() => _ArtikelUmumSectionState();
}

class _ArtikelUmumSectionState extends State<ArtikelUmumSection> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        CardArtikelUmum(),
        Divider(),
        CardArtikelUmum(),
        Divider(),
        CardArtikelUmum(),
        Divider(),
        CardArtikelUmum(),
      ],
    );
  }
}
