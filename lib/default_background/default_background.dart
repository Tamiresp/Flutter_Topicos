import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/features/home/home_page.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class DefaultBackground extends StatelessWidget {
  final Color color;
  final String title;
  final bool isHome;
  final bool isDetail;

  DefaultBackground({this.color, this.title, this.isHome, this.isDetail});

  build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: color,
          ),
          backButton(context: context, isHome: isHome, isDetail: isDetail)
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

  Widget backButton({BuildContext context, bool isHome, bool isDetail}) {
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
                  if (isDetail)
                    navigateToHomePage(context: context);
                  else 
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
  navigateToHomePage({BuildContext context}) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }
}
