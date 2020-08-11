import 'dart:io';
import 'package:ecommerce_food/Widget/CardsItems.dart';
import 'package:ecommerce_food/Widget/Categorybtn.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_food/animations/FadeAnimation.dart';

import 'package:ecommerce_food/Widget/Drawer.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit an App'),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              FlatButton(
                onPressed: () => exit(0),
                /*Navigator.of(context).pop(true)*/
                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.grey[100],
        resizeToAvoidBottomPadding: false,
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[100],
          elevation: 0,
          brightness: Brightness.light,
          leading: IconButton(
            icon: Icon(Icons.sort , color: Colors.orangeAccent),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 0),
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orangeAccent,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  cursorColor: Colors.black54,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                        1,
                        Text(
                          'Food Delivery',
                          style: TextStyle(
                              color: Colors.grey[80],
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height *0.07 ,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: <Widget>[
                          FadeAnimation(
                              1, Category(isActive: true, title: 'Pizaa')),
                          FadeAnimation(1.3,
                              Category(isActive: false, title: 'Burgers')),
                          FadeAnimation(1.4,
                              Category(isActive: false, title: 'Kebab')),
                          FadeAnimation(1.5,
                              Category(isActive: false, title: 'Desert')),
                          FadeAnimation(1.6,
                              Category(isActive: false, title: 'Salad')),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              FadeAnimation(
                  1,
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Free Delivery',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2
                    ),
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      FadeAnimation(
                          1.4, Items(image: 'assets/images/one.jpg')),
                      FadeAnimation(
                          1.5, Items(image: 'assets/images/two.jpg')),
                      FadeAnimation(
                          1.5, Items(image: 'assets/images/two.jpg')),
                      FadeAnimation(
                          1.6, Items(image: 'assets/images/three.jpg')),
                      FadeAnimation(
                          1.8, Items(image: 'assets/images/three.jpg')),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }


}
