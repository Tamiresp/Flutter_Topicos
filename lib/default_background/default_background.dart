import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class DefaultBackground extends StatelessWidget {
  final Color color;
  final String imageName;
  final String title;

  DefaultBackground({this.color, this.imageName, this.title});

  build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [backgroundImg(), backButton(context: context)],
      ),
    );
  }

  Widget backgroundImg() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          color: color,
        ),
        imageName != null
            ? Image.asset("images/$imageName.png")
            : SizedBox.shrink()
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

  Widget backButton({BuildContext context}) {
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
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
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
