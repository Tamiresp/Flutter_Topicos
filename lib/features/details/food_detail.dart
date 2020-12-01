import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/data/food.dart';
import 'package:project_topicos_avancados/default_background/default_background.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class FoodDetail extends StatelessWidget {
  final Food model;
  FoodDetail({@required this.model});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        DefaultBackground(
          color: AppColors.defaultBackgroundColor,
          title: "",
          isHome: false,
          isDetail: true,
        ),
        SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(top: 100, left: 16, right: 16),
          child: Column(
            children: [
              Image(image: AssetImage(model.imageName)),
              createText(
                  data: model.name,
                  color: AppColors.primaryTextColor,
                  size: 18,
                  font: FontWeight.bold),
              SizedBox(height: 12),
              createText(
                  data: model.price,
                  color: AppColors.loginBackgroundColor,
                  size: 18,
                  font: FontWeight.bold),
              SizedBox(height: 16),
              createText(
                  data: 'Delivery info',
                  color: AppColors.primaryTextColor,
                  size: 12,
                  font: FontWeight.bold),
              SizedBox(height: 16),
              createText(
                  data:
                      "Delivered betwen monday aug and thursday 20 from 8pm to 9:30 pm",
                  color: AppColors.secondaryTextColor,
                  size: 12,
                  font: FontWeight.normal),
              SizedBox(height: 16),
              createText(
                data: "Return Policy",
                color: AppColors.primaryTextColor,
                size: 12,
                font: FontWeight.bold,
              ),
              SizedBox(height: 16),
              createText(
                data:
                    "All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline imediately",
                color: AppColors.secondaryTextColor,
                size: 12,
                font: FontWeight.normal,
              ),
              SizedBox(height: 16),
              CupertinoButton(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                onPressed: () {},
                child: Text("Add to cart"),
                color: AppColors.loginBackgroundColor,
              ),
            ],
          ),
        ))
      ],
    ));
  }

  Text createText({String data, Color color, double size, FontWeight font}) {
    var textStyle = TextStyle(fontSize: size, color: color, fontWeight: font);

    return Text(
      data,
      style: textStyle,
      textAlign: TextAlign.justify,
    );
  }
}
