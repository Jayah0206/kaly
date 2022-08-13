import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class Category extends StatelessWidget {
  Category({ Key? key, required this.data, this.seleted = false, this.onTap}) : super(key: key);
  final data;
  final bool seleted;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0) ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff000000),
                    Color(0xff4C2B1A),
                  ],
                )),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            width: 160.0,
            height: 40,
            child: Center(
              child:Container(
                child: Text(data["name"], maxLines: 1, overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.eagleLake (fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white),
                ),
              ),
            ),
          ),
        ],

      ),

    );
  }
}


