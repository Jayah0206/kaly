import 'package:flutter/material.dart';

class DetAppBar extends StatelessWidget implements PreferredSizeWidget{
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
          SizedBox(
            width: 250,
          ),
          Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.notifications_on_sharp,
                  size: 28,
                  color: Colors.white,),
              ))
        ],
      ),

    );
  }
}