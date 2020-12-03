import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/data/cart.dart';
import 'package:project_topicos_avancados/data/food.dart';
import 'package:project_topicos_avancados/default_background/default_background.dart';
import 'package:project_topicos_avancados/features/home/home_page.dart';
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
          color: AppColors.grayBackgroundColor,
          title: "",
          isHome: false
        ),
        SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(top: 100, left: 24, right: 24),
          child: Column(
            children: [
              Image(image: AssetImage(model.imageName), height: 250, width: 250,),
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
              Row(
                children: [
                  createText(
                      data: 'Delivery info',
                      color: AppColors.primaryTextColor,
                      size: 12,
                      font: FontWeight.bold),
                ],
              ),
              SizedBox(height: 16),
              createText(
                  data:
                      "Delivered betwen monday aug and thursday 20 from 8pm to 9:30 pm",
                  color: AppColors.secondaryTextColor,
                  size: 12,
                  font: FontWeight.normal),
              SizedBox(height: 16),
              Row(
                children: [
                  createText(
                    data: "Return Policy",
                    color: AppColors.primaryTextColor,
                    size: 12,
                    font: FontWeight.bold,
                  ),
                ],
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
                onPressed: () {
                  Cart cart = new Cart();
                  cart.setQtd(11111);
                  navigateToHomePage(context: context);
                },
                child: Text("Add to cart"),
                color: AppColors.loginBackgroundColor,
              ),
            ],
          ),
        )),
        backButton(context: context)
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

  Widget backButton({BuildContext context}) {
    return Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(top: 50),
        child: Row(
          children: [
            IconButton(
                color: AppColors.primaryTextColor,
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  navigateToHomePage(context: context);
                })
          ],
        ));
  }
  navigateToHomePage({BuildContext context}) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }
}
