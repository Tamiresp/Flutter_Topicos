import 'package:flutter/material.dart';
import 'package:project_topicos_avancados/data/cart.dart';
import 'package:project_topicos_avancados/features/grid/grid_page.dart';
import 'package:project_topicos_avancados/utils/app_colors.dart';
class TabPage extends StatelessWidget {
  Cart cart = new Cart();
                  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: AppColors.grayBackgroundColor,
          appBar: AppBar(
            toolbarHeight: 150,
              title: Text('Delicious\nfood for you', style: TextStyle(fontSize: 24),),
              backgroundColor: AppColors.loginBackgroundColor,
              actions: <Widget>[
                Stack(children: [
                  IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    cart.setQtd(11111);
                  },
                ),
                Positioned(
                  left: 16,
                  child: AddItem())
                ],)
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
              GridPage(tab: 1),
              GridPage(tab: 2),
              GridPage(tab: 3)
            ],
          ),
        ),
      ), 
    );
  }
}

class AddItem extends StatefulWidget {
  AddItem({Key key}) : super(key: key);

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  Cart _cart = new Cart();

  @override
  Widget build(BuildContext context) {
    return Text(_cart.getQtd().toString());  
  }
}