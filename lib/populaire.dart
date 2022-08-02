import 'package:flutter/material.dart';


class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 170,
      width: 220,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            child: Container(
              height: 120, width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://images.unsplash.com/photo-1533630336171-85a2cde85463?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
                    )
                ),
              ),
            ),
          ),
          Positioned(
              top: 0, right: 5,
              child: IconButton(
                color: Colors.red,
                iconSize: 18,
                icon: Icon(Icons.favorite_outline_outlined), onPressed: () {},

              )
          ),
          Positioned(
            top: 140,
            child: Container(
                width: 220,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("Pizza Margueritte", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)),
                          SizedBox(width: 5,),
                          Text("Ar8000", style: TextStyle(fontSize: 14, color: Colors.orange, fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ]
                )
            ),
          )
        ],
      ),
    );
  }
}
