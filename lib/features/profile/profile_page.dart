import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/default_background/default_background.dart';
import 'package:project_topicos_avancados/features/home/home_page.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class ProfilePage extends StatelessWidget {
   build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackground(
              color: AppColors.defaultBackgroundColor,
              imageName: "iconChef",
              title: 'Profile',
              isHome: false),
        ],
      ),
    );
  }

  Text createButtonText({String data, Color color}) {
    var textStyle =
        TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: color);
    return Text(data, style: textStyle);
  }

  navigateToHomePage({BuildContext context}) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }
}
