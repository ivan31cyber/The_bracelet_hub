
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
      Category(
        image_location: 'assests/images/c5.png',
        image_caption: 'Beaded bracelets',
      ),
          Category(
            image_location: 'assests/images/c2.png',
            image_caption: 'Charm bracelets',
          ),

          Category(
            image_location: 'assests/images/c3.png',
            image_caption: 'Distance bracelets',
          ),

          Category(
            image_location: 'assests/images/c4.png',
            image_caption: 'Wrap bracelets',
          )

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    required this.image_location,
    required this.image_caption,
});
  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
        title: Image.asset(image_location,
        width: 100.0,
          height: 80.0,
        ),
        subtitle: Container(
         alignment: Alignment.topCenter,
         child: Text(image_caption,
         style: const TextStyle(fontSize: 12.0),
         ),
        )

    ),
    ),
    ),

    );
  }
}


