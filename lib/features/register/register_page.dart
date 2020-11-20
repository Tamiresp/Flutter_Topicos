import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/default_background/default_background.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class RegisterPage extends StatelessWidget {
  build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackground(
            color: AppColors.defaultBackgroundColor,
            imageName: "iconChef",
            title: 'Register'
          )
        ],
      ),
    );
  }
}