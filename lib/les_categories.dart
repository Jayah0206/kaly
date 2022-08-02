import 'package:flutter/material.dart';


class LesCategory extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
        height: height/18,
        child: ListView.builder(itemBuilder: (context, index)
        {
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 10, left: 10),
              width: 90,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.05),
                    spreadRadius: .5,
                    blurRadius: .5,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 7),
                  Text('pizza',maxLines: 1, overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13, color: Colors.black)
                    ,)
                ],
              ),
          );
        },
          itemCount: 7,
        scrollDirection: Axis.horizontal,
        )
    );

  }
}
