import 'package:flutter/material.dart';
import 'package:kaly/views/home/widgets/app_bar.dart';


class Operation {
  IconData icon;
  String operation;

  Operation({
    required this.icon,
    required this.operation
});

}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State {

  List operationList =[
    Operation(icon: Icons.monetization_on, operation: "Payement"),
    Operation(icon: Icons.card_giftcard, operation: "My orders"),
    Operation(icon: Icons.favorite, operation: "Favorites"),
    Operation(icon: Icons.lock_outline_rounded, operation: "Change Password"),
    Operation(icon: Icons.logout_outlined, operation: "Log out")
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage("https://scontent.ftnr5-1.fna.fbcdn.net/v/t1.6435-9/145549367_1870622209792371_3376713162480764274_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=104&ccb=1-7&_nc_sid=7aed08&efg=eyJpIjoiYiJ9&_nc_eui2=AeHoiwnn9xwyrPu_GbxjUhOVVHgNX0PeE09UeA1fQ94TT1-f1FqaO7_W1pJjLVBtFbr6YFBrXHru15zMxT_6C9cO&_nc_ohc=sqkzmLa0BKUAX_yWC9I&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT-kJk_vqlZtwqYbOqiw0ShxZnLjynuOogJ6e9lc2NjX-g&oe=63252AFB")
                ),
              ),
            ),
            Text("Hajatiana Sitraka", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
            SizedBox(
              height: 20,
            ),
            Column(
              children:[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: ListView.builder(
                      shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: operationList.length,
                    itemBuilder: (context, index){
                      return Container(
                      height: 60,
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black87.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                          decoration: BoxDecoration(
                            color: Colors.orange[900],
                            shape: BoxShape.circle,),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                               operationList[index].icon,color: Colors.white,
                              ),
                            ),
                          ) ,
                          Text(operationList[index].operation.toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700,),),
                          SizedBox(width: 100,),
                          Icon(Icons.arrow_forward_ios, size: 18,)
                            ]
                            ),
                          );
                        }
                       ),
                    )
                ],
              ),
             ]
           ),
        );
  }
}