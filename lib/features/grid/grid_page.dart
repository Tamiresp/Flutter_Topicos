import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/data/drinks.dart';
import 'package:project_topicos_avancados/data/food.dart';
import 'package:project_topicos_avancados/data/snacks.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key key, this.tab}) : super(key: key);
  final int tab;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 2,
      mainAxisSpacing: 1,
      children: List.generate(getLength(), (index) {
        return Center(heightFactor: 1, child: getWidget(index));
      }),
    );
  }

  Widget getWidget(int index) {
    switch (tab) {
      case 1:
        return FoodCard(food: foodList[index]);
        break;
      case 2:
        return DrinksCard(drink: drinksList[index]);
        break;
      case 3:
        return SnacksCard(snacks: snacksList[index]);
        break;
    }
  }

  int getLength() {
    switch (tab) {
      case 1:
        return foodList.length;
        break;
      case 2:
        return drinksList.length;
        break;
      case 3:
        return snacksList.length;
        break;
    }
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

class DrinksCard extends StatelessWidget {
  const DrinksCard({Key key, this.drink}) : super(key: key);
  final Drinks drink;

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
                    image: AssetImage(drink.imageName),
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover),
                createText(data: drink.name, color: AppColors.primaryTextColor),
                createText(
                    data: drink.price, color: AppColors.loginBackgroundColor)
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

class SnacksCard extends StatelessWidget {
  const SnacksCard({Key key, this.snacks}) : super(key: key);
  final Snacks snacks;

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
                    image: AssetImage(snacks.imageName),
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover),
                createText(
                    data: snacks.name, color: AppColors.primaryTextColor),
                createText(
                    data: snacks.price, color: AppColors.loginBackgroundColor)
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
