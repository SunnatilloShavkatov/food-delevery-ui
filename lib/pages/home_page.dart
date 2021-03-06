import 'package:flutter/material.dart';
import 'package:food_delivery/animation/scale_route.dart';
import 'package:food_delivery/pages/sign_in_page.dart';
import 'package:food_delivery/widgets/best_food_widget.dart';
import 'package:food_delivery/widgets/bottom_nav_bar_widget.dart';
import 'package:food_delivery/widgets/popular_foods_widget.dart';
import 'package:food_delivery/widgets/search_widget.dart';
import 'package:food_delivery/widgets/top_menus.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          title: Text(
            "What would you like to eat?",
            style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {
                Navigator.push(context, ScaleRoute(page: SignInPage()));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SearchWidget(),
              TopMenus(),
              PopularFoodsWidget(),
              BestFoodWidget(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBarWidget(),
      ),
    );
  }
}
