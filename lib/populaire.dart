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
                    image: NetworkImage("https://4.bp.blogspot.com/-A2mn5pPuMOg/WvCV-Cl7p9I/AAAAAAAAAHI/OvqzHNF_ysMTGCQwVL2xz7iQ5RtmBTSWQCLcBGAs/s1600/FB_IMG_15254740627486899.jpg",
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
                          Expanded(child: Text("FLAVORED RUM", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)),
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
