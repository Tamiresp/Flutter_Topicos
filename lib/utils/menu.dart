import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/data/user.dart';
import 'package:project_topicos_avancados/features/login/login_page.dart';
import 'package:project_topicos_avancados/features/profile/profile_page.dart';

import 'app_colors.dart';

class Menu extends StatelessWidget {
  var user = User();
  build(BuildContext context) {
    return Drawer(
      
      child: Container(
        color: AppColors.grayBackgroundColor,
        child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.loginBackgroundColor,
              ),
              accountName: Text(user.name),
              accountEmail: Text(user.email),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: AppColors.defaultBackgroundColor,
                  child: Image(image: AssetImage(user.imageName)))),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('Log Out'),
            leading: Icon(Icons.logout),
            onTap: () {
              showAlertDialog(context: context);
            },
          ),
        ],
      ),)
    );
  }

  navigateToLoginPage({BuildContext context}) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }

  navigateToProfilePage({BuildContext context}) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => ProfilePage()));
  }

  showAlertDialog({BuildContext context}) {
    Widget noButton = FlatButton(
      child: Text("No"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );

    Widget yesButton = FlatButton(
      child: Text("Yes"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
        navigateToLoginPage(context: context);
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text("Alert"),
      content: Text("Are you sure you want to leave the app?"),
      actions: [noButton, yesButton],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
