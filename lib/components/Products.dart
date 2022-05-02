import 'package:flutter/material.dart';
import 'package:untitled/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);



  @override
  State <Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // ignore: non_constant_identifier_names
  var product_list = [
    {
      "name": "Om Bracelet",
      "picture": 'assests/images/i2.jpeg',
      "MRP": "200",
      "Price": "150",

    },
    {
      "name": "Buddha Bracelet",
      "picture": "assests/images/i1.jpeg",
      "MRP": "179",
      "Price": "139",

    },
    {
      "name": "Branch Bracelet",
      "picture": "assests/images/i8.jpeg",
      "MRP": "200",
      "Price": "150",

    },
    {
      "name": "Agate Bracelet",
      "picture": "assests/images/i3.jpeg",
      "MRP": "190",
      "Price": "150",

    },
    {
      "name": "Bliss Bracelet",
      "picture": "assests/images/i4.jpeg",
      "MRP": "230",
      "Price": "180",

    },
    {
      "name": "Aqua Bracelet",
      "picture": "assests/images/i5.jpeg",
      "MRP": "200",
      "Price": "150",

    },
    {
      "name": "Tiger Bracelet",
      "picture": "assests/images/i6.jpeg",
      "MRP": "250",
      "Price": "200",

    },
    {
      "name": "Bravery Bracelet",
      "picture": "assests/images/i7.jpeg",
      "MRP": "180",
      "Price": "150",

    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Single_Product(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_rice: product_list[index]['MRP'],
              prod_new_price: product_list[index]['Price']);
        });
  }
}


class Single_Product extends StatelessWidget {

  final prod_name;
  final prod_picture;
  final prod_old_rice;
  final prod_new_price;

  Single_Product({
    this.prod_name,
    this.prod_picture,
    this.prod_old_rice,
    this.prod_new_price,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: prod_name,
      child: Material(child: InkWell(
        onTap: () =>
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ProductDetails(
            product_detail_name: prod_name,
            product_detail_old_price: prod_old_rice,
            product_detail_picture: prod_picture,
            product_detail_price: prod_new_price,

          ))
        ),
      child: GridTile(
        footer: Container(
          color: Colors.white70,
          child: ListTile(
            leading: Text(prod_name,style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            title: Text("\₹$prod_new_price",
            style: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            ),
            subtitle: Text("\₹$prod_old_rice",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough
              ),
            ),



          ),
        ),
        child: Image.asset(prod_picture,
        fit: BoxFit.fill,)),
      ),)
      ),
    );
  }
}
