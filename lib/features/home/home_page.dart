import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/default_background/default_background.dart';
import 'package:project_topicos_avancados/features/login/login_page.dart';
import 'package:project_topicos_avancados/features/profile/profile_page.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: AppColors.loginBackgroundColor,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: AppColors.loginBackgroundColor,
                ),
                accountName: Text("Tamires"),
                accountEmail: Text("tamires@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: AppColors.defaultBackgroundColor,
                    child: Text(
                      "T",
                      style: TextStyle(fontSize: 40.0),
                    ))),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
              onTap: () {
                navigateToProfilePage(context: context);
              },
            ),
            ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout),
              onTap: () {
                navigateToLoginPage(context: context);
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          DefaultBackground(
              color: AppColors.defaultBackgroundColor,
              imageName: "iconChef",
              title: '',
              isHome: true)
        ],
      ),
    );
  }

  navigateToLoginPage({BuildContext context}) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }

  navigateToProfilePage({BuildContext context}) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => ProfilePage()));
  }
}
