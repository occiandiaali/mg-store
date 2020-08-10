import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:mg/components/horizontal_listview.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/w5.jpg'),
          AssetImage('assets/images/m2.jpg'),
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/w1.jpeg'),
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/w4.jpeg'),
          AssetImage('assets/images/c1.jpg'),
        ],
        autoplay: false, // set to true if you want carousel to autoroll
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.white,
        indicatorBgPadding: 8.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          // brand label
          'MG Store',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: <Widget>[
          // search and basket widgets
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              iconSize: 28,
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              iconSize: 28,
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'occian44',
                style: TextStyle(
                  fontSize: 19,
                  //color: Colors.deepPurpleAccent,
                ),
              ),
              accountEmail: Text(
                'ocean.diaali@gmail.com',
                style: TextStyle(
                  fontSize: 19,
                  //color: Colors.deepPurpleAccent,
                ),
              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  child: Icon(Icons.person, color: Colors.white),
                  backgroundColor: Colors.blueGrey,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.deepOrangeAccent,
                ),
                title: Text('Account'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.deepOrangeAccent,
                ),
                title: Text('Orders'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.deepOrangeAccent,
                ),
                title: Text('Favourite'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.deepOrangeAccent,
                ),
                title: Text('Settings'),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.deepOrangeAccent,
                ),
                title: Text('About Us'),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          imageCarousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          HorizontalList(), // categories scrolling list
        ],
      ),
    );
  }
} // class dashboard state
