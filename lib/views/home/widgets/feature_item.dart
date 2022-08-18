import 'package:flutter/material.dart';
import 'package:kaly/data/data.dart';
import 'package:kaly/views/home/widgets/favory.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({ Key? key, required this.data, this.onTap}) : super(key: key);
  final data;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10), // Image border
            child: SizedBox.fromSize(
              size: Size.fromRadius(35), // Image radius
              child: Image.network(data["image"],
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover),
            ),
          ),

          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(data["name"],  maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                SizedBox(height: 5,),
                Text(data["sources"], maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12, color: Colors.grey)),
                SizedBox(height: 15,),
                Row(children: [
                  Icon(Icons.star_rounded, size: 14, color: Colors.orange,),
                  SizedBox(width: 3,),
                  Text(data["rate"] + " (" + data["rate_number"] + ")", style: TextStyle(fontSize: 12, color: Colors.orange)),
                ],)
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Text(data["price"],  maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.orange)),
              SizedBox(height: 10,),
              FavoriteBox(iconSize: 17, )
            ],
          ),
        ],
      ),
    );
  }
}

