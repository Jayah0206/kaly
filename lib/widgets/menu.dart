import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: null,
              icon: Icon(Icons.home_sharp,
                color: Colors.grey,
                size: 30,),),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.wine_bar_sharp,
              color: Colors.grey,
              size: 30,),),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.add_shopping_cart_sharp,
              color: Colors.grey,
              size: 30,),),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.person_sharp,
              color: Colors.grey,
              size: 30,),),
        ],
      ),
    );
  }
}
