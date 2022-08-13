import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kaly/favory.dart';

class details extends StatelessWidget {
  const details({Key? key}) : super(key: key);

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
              child: Image.network('https://scontent.ftnr4-1.fna.fbcdn.net/v/t39.30808-6/253693110_3062379954006882_5114606571690218224_n.jpg?stp=dst-jpg_p526x296&_nc_cat=109&ccb=1-7&_nc_sid=a26aad&_nc_eui2=AeGx7XCXJ-Fd0uvKeNV-GaAxgNF6pqtxOx6A0Xqmq3E7Hvyuue61CKeI1fJMa47E3lrAFQCgK95MGCSOQ5SYXFGX&_nc_ohc=S9nsGowzeMAAX9AqOwi&_nc_zt=23&_nc_ht=scontent.ftnr4-1.fna&oh=00_AT-qJpm6O3xw_Jg3toNKe7YQimYGfxNrCcNwTGYmN3Se8w&oe=62EE7229',
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
                Text("Pur jus de canne - SAUVAGE",  maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                SizedBox(height: 5,),
                Text("55%ALC/VOL", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12, color: Colors.grey)),
                SizedBox(height: 15,),
                Row(children: [
                  Icon(Icons.star_rounded, size: 14, color: Colors.orange,),
                  SizedBox(width: 3,),
                  Text("4.3" "(850)", style: TextStyle(fontSize: 12, color: Colors.orange)),
                ],)
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Text("Ar 8000",  maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.orange)),
              SizedBox(height: 10,),
              FavoriteBox(iconSize: 17, )
            ],
          ),
        ],
      ),
    );
  }
}

