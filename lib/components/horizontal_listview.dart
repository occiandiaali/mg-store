import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'assets/cats/accessories.png',
            imageCaption: 'accessories',
          ),
          Category(
            imageLocation: 'assets/cats/jeans.png',
            imageCaption: 'jeans',
          ),
          Category(
            imageLocation: 'assets/cats/shoe.png',
            imageCaption: 'shoes',
          ),
          Category(
            imageLocation: 'assets/cats/tshirt.png',
            imageCaption: 'shirts',
          ),
          Category(
            imageLocation: 'assets/cats/formal.png',
            imageCaption: 'formal',
          ),
          Category(
            imageLocation: 'assets/cats/informal.png',
            imageCaption: 'informal',
          ),
          Category(
            imageLocation: 'assets/cats/dress.png',
            imageCaption: 'dress',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                imageLocation,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(imageCaption),
              )),
        ),
      ),
    );
  }
}
