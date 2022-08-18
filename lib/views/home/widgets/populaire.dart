import 'package:flutter/material.dart';
import 'favory.dart';

class PopularItem extends StatelessWidget {
  PopularItem({ Key? key, required this.data }) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    return
      Positioned(
        child: Container(
          margin: EdgeInsets.only(right: 15),
          height: 250, width: 220,
          child: Stack(
            children: [
              Positioned(
                top: 10,
                child: Container(
                  height: 220, width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(data["image"])
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 0, right: 5,
                  child: FavoriteBox(isFavorited: data["is_favorited"],)
              ),
              Positioned(
                top: 235,
                child: Container(
                    width: 220,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(child: Text(data["name"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)),
                              SizedBox(width: 5,),
                              Text(data["price"], style: TextStyle(fontSize: 14, color: Colors.orange, fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ]
                    )
                ),
              )
            ],
          ),
        ),
      );
  }
}