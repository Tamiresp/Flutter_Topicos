import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 150,
              title: Text('Delicious\nfood for you', style: TextStyle(fontSize: 24),),
              backgroundColor: AppColors.loginBackgroundColor,
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
              bottom: TabBar(
                tabs: [
                  Text('Foods'),
                  Text('Drinks'),
                  Text('Snacks'),
                ],
              indicatorColor: AppColors.loginBackgroundColor
              )),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ), 
    );
  }
}
