import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/default_background/default_background.dart';
import 'package:project_topicos_avancados/features/home/tabs_page.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackground(
              color: AppColors.grayBackgroundColor,
              title: '',
              isHome: true),
          TabPage()
        ],
      
      ),
     
    );
  }
}
