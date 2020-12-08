import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/features/register/register_page.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';
import 'package:project_topicos_avancados/features/navigation/botton_navigation.dart';

class LoginPage extends StatelessWidget {
  build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          createBackgroung(imageName: "images/background.png"),
          createFormWidget(context: context)
        ],
      ),
    );
  }

  Widget createFormWidget({BuildContext context}) {
    return Positioned(
      right: 16,
      left: 16,
      child: Center(
        heightFactor: 1.8,
        child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(height: 16),
            createTextField(
                data: "Enter your name",
                isObscureText: false,
                iconName: Icon(Icons.person),
                visibleIcon: false),
            createTextField(
                data: "Enter your password",
                isObscureText: true,
                iconName: Icon(Icons.lock),
                visibleIcon: true),
            SizedBox(height: 16),
            Center(
              heightFactor: 1,
              child: Column(
                children: [
                  CupertinoButton(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    onPressed: () {
                      navigateToHomePage(context: context);
                    },
                    child: createButtonText(data: "Login", color: Colors.white),
                    color: AppColors.loginBackgroundColor,
                  ),
                  SizedBox(height: 16),
                  createText(data: 'Forgot password?'),
                  SizedBox(height: 16),
                  TextButton(
                      onPressed: () {
                        navigateToRegisterPage(context: context);
                      },
                      child: createButtonText(
                          data: "Sign Up", color: Colors.blue)),
                  SizedBox(height: 16),
                  createText(data: 'OR'),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("images/iconGoogle.png"),
                        fit: BoxFit.fill,
                      ),
                      SizedBox(width: 16),
                      Image(
                        image: AssetImage("images/Facebook.png"),
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                  SizedBox(height: 16)
                ],
              ),
            ),
          ]),
        ),
      ),
      )
    );
  }

  navigateToHomePage({BuildContext context}) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => BottomNavigation()));
  }

  navigateToRegisterPage({BuildContext context}) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => RegisterPage()));
  }

  Text createButtonText({String data, Color color}) {
    var textStyle =
        TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: color);
    return Text(data, style: textStyle);
  }

  TextField createTextField(
      {String data, bool isObscureText, Icon iconName, bool visibleIcon}) {
    return TextField(
      obscureText: isObscureText,
      decoration: InputDecoration(
          border: InputBorder.none,
          labelText: data,
          hintText: data,
          prefixIcon: iconName,
          suffixIcon: visibleIcon ? Icon(Icons.visibility_off) : null),
    );
  }

  Text createText({String data}) {
    var textStyle = TextStyle(
        fontSize: 12,
        color: AppColors.secondaryTextColor,
        fontWeight: FontWeight.normal);

    return Text(
      data,
      style: textStyle,
      textAlign: TextAlign.center,
    );
  }

  Stack createBackgroung({String imageName}) {
    return Stack(children: <Widget>[
      Positioned.fill(
        child: Image(
          image: AssetImage(imageName),
          fit: BoxFit.fill,
        ),
      ),
    ]);
  }
}
