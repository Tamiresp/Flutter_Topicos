import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/default_background/default_background.dart';
import 'package:project_topicos_avancados/features/home/home_page.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';
import 'package:project_topicos_avancados/features/navigation/botton_navigation.dart';

class RegisterPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackground(
              color: Colors.white,
              title: 'Register',
              isHome: false),
          DefaultBackground().backgroundImg(imageName: "iconChef"),

          Positioned(
              left: 16,
              right: 16,
              top: 150,
              child: Column(
                children: [
                  createForm(context: context),
                  Container(
                      child: CupertinoButton(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        navigateToHomePage(context: context);
                      }
                    },
                    child:
                        createButtonText(data: "Register", color: Colors.white),
                    color: AppColors.loginBackgroundColor,
                  ))
                ],
              ))
        ],
      ),
    );
  }

  Widget createForm({BuildContext context}) {
    return Form(
        key: _formKey,
        child: Column(children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter your name', 
            prefixIcon: Icon(Icons.person)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter your email',
                                        prefixIcon: Icon(Icons.email)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter your password',
                                        prefixIcon: Icon(Icons.lock)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter yor password';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Confirm your password', 
                                        prefixIcon: Icon(Icons.lock)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter confirm your password';
              }
              return null;
            },
          ),
          SizedBox(height: 16)
        ]));
  }

  Text createButtonText({String data, Color color}) {
    var textStyle =
        TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: color);
    return Text(data, style: textStyle);
  }

  navigateToHomePage({BuildContext context}) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => BottomNavigation()));
  }
}
