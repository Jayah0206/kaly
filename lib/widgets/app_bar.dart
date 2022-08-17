import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  Size get preferredSize => new Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: (0),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Icon(Icons.clear_all_rounded, size: 28, color: Color(0xFF000000),))
             ),
            Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.notifications_on_sharp,
                    size: 28,
                    color: Color(0xFF000000),),
                ))
            
            
          ]
        ,),

    );


  }
}

