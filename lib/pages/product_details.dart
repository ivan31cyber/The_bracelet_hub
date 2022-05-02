import 'dart:ui';

import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final product_detail_name;
  final product_detail_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    required this.product_detail_name,
    required this.product_detail_price,
    required this.product_detail_old_price,
    required this.product_detail_picture,
});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.black54,
          title: const Text('The Bracelet Hub'),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.search, color: Colors.white,),
              onPressed: () {},),
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: () {},)
          ]
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("\₹${widget.product_detail_old_price}",
                            style: const TextStyle(color: Colors.black87,
                              decoration: TextDecoration.lineThrough,
                            ),
                          )),
                      Expanded(child: Text("\₹${ widget.product_detail_price}",
                        style: const TextStyle(
                            color: Colors.red
                        ),
                      )),
                    ],

                  ),
                ),
              ),
            ),
          ),

          Row(
            children: <Widget>[
              Expanded(child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: const <Widget>[
                    Expanded(child: Text("Size")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),),
              Expanded(child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: const <Widget>[
                    Expanded(child: Text("Color")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),),
              Expanded(child: MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: const <Widget>[
                    Expanded(child: Text("Qty")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy Now")

              ),
              ),
              IconButton(
                icon: const Icon(Icons.add_shopping_cart, color: Colors.red,),
                onPressed: () {},),
              IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.red,),
                onPressed: () {},)

            ],
          ),
        ],
      ),
    );
  }
}
