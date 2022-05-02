

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//imports
import 'package:untitled/components/Horizontal.dart';
import 'package:untitled/components/Products.dart';
void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ) // MaterialApp

  );
}
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 190.0,
      child: Carousel(
        boxFit: BoxFit.contain,
        images: const [
          AssetImage('assests/images/b1.jpeg'),
          AssetImage('assests/images/b2.jpeg'),
          AssetImage('assests/images/b3.jpeg'),
          AssetImage('assests/images/b4.jpeg'),
          AssetImage('assests/images/b5.jpeg'),
          AssetImage('assests/images/b6.jpeg'),
          AssetImage('assests/images/b7.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 500 ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text('The Bracelet Hub'),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search, color: Colors.white,),onPressed: (){},),
          IconButton(icon: const Icon(Icons.shopping_cart, color: Colors.white,),onPressed: (){},)
        ]
      ), // AppBar
      drawer: Drawer(
        child: ListView(
          children: <Widget>[

          UserAccountsDrawerHeader(
                accountName: const Text("Ivan Dsouza"),
                accountEmail: const Text('ivandsouza@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
          ),

            //body

            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home,color: Colors.black,),
              ),
            ),
        InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("My Account"),
            leading: Icon(Icons.person),
          ),
        ),
        InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("My Orders"),
            leading: Icon(Icons.shopping_basket,color: Colors.teal,),
          ),
        ),
        InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("Categories"),
            leading: Icon(Icons.dashboard, color: Colors.purpleAccent,),
          ),
        ),
        InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("Favourites"),
            leading: Icon(Icons.favorite,color: Colors.red,),
          ),
        ),
        InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings,color: Colors.greenAccent,),
          ),
        ),
        InkWell(
          onTap: (){},
          child: const ListTile(
            title: Text("About"),
            leading: Icon(Icons.help, color: Colors.cyanAccent,),
          ),
        ),
          ],
        )
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,

//padding widget
        const Padding(padding: EdgeInsets.all(3.0),
            child: Text('Categories'),), // Padding


//Horizontal list view begins here

          HorizontalList(),

          //padding widget
          const Padding(padding: EdgeInsets.all(10.0),
            child: Text('Recent Products'),),

          //grid view
          Container(
            height: 295.0,
            child: const Products(),
          )
          // Padding
        ],
      ),
    );
  }
}// Scaffold
