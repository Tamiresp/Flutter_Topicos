import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/default_background/default_background.dart';
import 'package:project_topicos_avancados/features/home/home_page.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage> {
  final TextEditingController _currencyController = new TextEditingController();
  int _radioValue = 0;

  build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackground(
              color: AppColors.grayBackgroundColor,
              title: 'My Profile',
              isHome: true),
          createTitle(data: 'Information', top: 150),
          createProfileCard(),
          createTitle(data: 'Payment Method', top: 300),
          createPaymentCard()
        ],
      ),
    );
  }

  createTitle({String data, double top}) {
    return Positioned(
      top: top,
      left: 20,
      child: createText(data: data, size: 16, fontWeight: FontWeight.bold),
    );
  }

  createProfileCard() {
    return Positioned(
      top: 180,
      right: 16,
      left: 16,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.defaultBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage("images/índice.png"),
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    createText(
                        data: 'Tamires Pereira',
                        size: 14,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: 12),
                    createText(
                        data: 'tamires@gmail.com',
                        size: 12,
                        fontWeight: FontWeight.normal),
                    SizedBox(height: 12),
                    createText(
                        data: 'No information Adress',
                        size: 12,
                        fontWeight: FontWeight.normal),
                  ],
                ),
                SizedBox(width: 60),
                Icon(Icons.edit)
              ],
            ),
            SizedBox(height: 16)
          ]),
        ),
      ),
    );
  }

  createPaymentCard() {
    return Positioned(
      top: 330,
      right: 16,
      left: 16,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.defaultBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(children: [
            SizedBox(height: 16),
            radioBtn(context),
            SizedBox(height: 16)
          ]),
        ),
      ),
    );
  }

  Text createButtonText({String data, Color color}) {
    var textStyle =
        TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: color);
    return Text(data, style: textStyle);
  }

  Text createText({String data, double size, FontWeight fontWeight}) {
    var textStyle = TextStyle(
        fontSize: size,
        color: AppColors.primaryTextColor,
        fontWeight: fontWeight);

    return Text(
      data,
      style: textStyle,
      textAlign: TextAlign.justify,
    );
  }

  navigateToHomePage({BuildContext context}) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  Widget radioBtn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0,
          groupValue: _radioValue,
          onChanged: _handleRadioValueChange,
        ),
        Text('Card'),
        Radio(
          value: 1,
          groupValue: _radioValue,
          onChanged: _handleRadioValueChange,
        ),
        Text('Bank Account'),
        Radio(
          value: 2,
          groupValue: _radioValue,
          onChanged: _handleRadioValueChange,
        ),
        Text('Paypal'),
      ],
    );
  }
}
