import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/default_background/default_background.dart';
import 'package:project_topicos_avancados/features/login/login_page.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), backgroundColor: AppColors.loginBackgroundColor,),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: AppColors.loginBackgroundColor,
              ),
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
              onTap: () {
                
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
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }
}
