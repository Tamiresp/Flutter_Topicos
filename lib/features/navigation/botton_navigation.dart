import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/features/home/home_page.dart';
import 'package:project_topicos_avancados/features/profile/profile_page.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';
import 'package:project_topicos_avancados/utils/menu.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return new Scaffold(
      body: DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: TabBarView(
            children: [
              HomePage(),
              ProfilePage(),
              Menu()
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
                
              ),
              Tab(
                icon: new Icon(Icons.person),
              ),
              Tab(
                icon: new Icon(Icons.menu),
              )
            ],
            labelColor: AppColors.loginBackgroundColor,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: AppColors.loginBackgroundColor,
          ),
          backgroundColor: AppColors.grayBackgroundColor,
        ),
      ),
    );
  }
}