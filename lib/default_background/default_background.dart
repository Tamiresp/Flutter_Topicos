import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class DefaultBackground extends StatelessWidget {
  final Color color;
  final String title;
  final bool isHome;

  DefaultBackground({this.color, this.title, this.isHome});

  build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: color,
          ),
          backButton(context: context, isHome: isHome)
        ],
      ),
    );
  }

  Widget backgroundImg({String imageName}) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Positioned(
            top: 16,
            child: imageName != null
                ? Image.asset("images/$imageName.png")
                : SizedBox.shrink())
      ],
    );
  }

  Widget backgroundTitle() {
    var textStyle = TextStyle(
        fontSize: 16,
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.bold);

    return Stack(alignment: Alignment.topCenter, children: [
      Text(
        title,
        style: textStyle,
        textAlign: TextAlign.center,
      )
    ]);
  }

  Widget backButton({BuildContext context, bool isHome}) {
    var textStyle = TextStyle(
        fontSize: 24,
        color: AppColors.primaryTextColor,
        fontWeight: FontWeight.bold);

    return Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(top: 50),
        child: Row(
          children: [
            IconButton(
                color: AppColors.primaryTextColor,
                icon: isHome ? Icon(null) : Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                }),
            Text(
              title,
              style: textStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
