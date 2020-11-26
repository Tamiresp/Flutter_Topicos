import 'package:flutter/cupertino.dart';
import 'package:project_topicos_avancados/default_background/default_background.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class FoodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
        DefaultBackground(color: AppColors.defaultBackgroundColor, title: '', isHome: false),
        
      ],);
  }

  
}