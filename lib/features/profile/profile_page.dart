import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/data/user.dart';
import 'package:project_topicos_avancados/default_background/default_background.dart';
import 'package:project_topicos_avancados/features/home/home_page.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class ProfilePage extends StatelessWidget {
  build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackground(
              color: AppColors.grayBackgroundColor,
              title: 'My Profile',
              isHome: true),
        
          createTitle(data: 'Information', top: 120),
          createProfileCard(),
          createTitle(data: 'Payment Method', top: 280),
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
    var user = User();
   
    return Positioned(
      top: 150,
      right: 16,
      left: 16,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(user.imageName),
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    createText(
                        data: user.name,
                        size: 14,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: 12),
                    createText(
                        data: user.email,
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
      top: 310,
      right: 16,
      left: 16,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(children: [
            SizedBox(height: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyStatefulWidget()
                    ],
            ),
            SizedBox(height: 8)
          ]),
        ),
      ),
    );
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
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

enum PaymentMethod { card, bank, paypal }

 var user = User();
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
 
  PaymentMethod _character = user.paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<PaymentMethod>(
          title: const Text('Card'),
          value: PaymentMethod.card,
          groupValue: _character,
          onChanged: (PaymentMethod value) {
            setState(() {
              _character = value;
            });
          },
        ),
        Row(children: [
          Expanded(
            child: Divider(color: AppColors.secondaryTextColor, indent: 25)
        ),
        ],),
        RadioListTile<PaymentMethod>(
          title: const Text('Bank Account'),
          value: PaymentMethod.bank,
          groupValue: _character,
          onChanged: (PaymentMethod value) {
            setState(() {
              _character = value;
            });
          },
        ),
        Row(children: [
          Expanded(
            child: Divider(color: AppColors.secondaryTextColor, indent: 25)
        ),
        ],),
        RadioListTile<PaymentMethod>(
          title: const Text('Paypal'),
          value: PaymentMethod.paypal,
          groupValue: _character,
          onChanged: (PaymentMethod value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}
