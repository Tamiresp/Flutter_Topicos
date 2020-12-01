import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/data/food.dart';
import 'package:project_topicos_avancados/features/details/food_detail.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key key, this.tab}) : super(key: key);
  final int tab;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 21),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 1,
          children: returnList(context: context),
        ),
      ),
    );
  }

  returnList({BuildContext context}){
    switch (tab) {
      case 1:
        return foodList.map((model) {
            return GestureDetector(
              child: FoodCard(food: model),
              onTap: () {
                navigateToFoodDetail(model: model, context: context);
              },
            );
          }).toList();
        break;
      case 2:
        return drinksList.map((model) {
            return GestureDetector(
              child: FoodCard(food: model),
              onTap: () {
                navigateToFoodDetail(model: model, context: context);
              },
            );
          }).toList();
        break;
      case 3:
        return snacksList.map((model) {
            return GestureDetector(
              child: FoodCard(food: model),
              onTap: () {
                navigateToFoodDetail(model: model, context: context);
              },
            );
          }).toList();
        break;
    }
  }

  navigateToFoodDetail({Food model, BuildContext context}) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => FoodDetail(model: model)));
  }

  
}

class FoodCard extends StatelessWidget {
  const FoodCard({Key key, this.food}) : super(key: key);
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        margin: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.white,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(
                    image: AssetImage(food.imageName),
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover),
                createText(data: food.name, color: AppColors.primaryTextColor),
                createText(
                    data: food.price, color: AppColors.loginBackgroundColor)
              ]),
        ));
  }

  Text createText({String data, Color color}) {
    var textStyle =
        TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.bold);

    return Text(
      data,
      style: textStyle,
      textAlign: TextAlign.center,
    );
  }
}

 
