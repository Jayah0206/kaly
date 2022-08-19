import 'package:flutter/material.dart';
import 'package:kaly/main.dart';
import 'package:kaly/views/cart/cart_item.dart';
import 'package:kaly/views/cart/cart_screen.dart';
import 'package:kaly/views/details/widgets/det_app_bar.dart';

class Details extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: DetAppBar(),
      body: SingleChildScrollView(
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/277169149_3162551240656419_1012256552984131747_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=102&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGCaDZRfr_sKh8-qL1raKZHEMuY8jfIn-UQy5jyN8if5RmgLciHStPz_jLTGiEnGfY9PyLCTUzcinrLfnAoTvJD&_nc_ohc=U34xuF-2VDAAX95w2d9&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8duiE_sIgz8bOs0Za5gcj1bSXuBapUqFmzIRek26syjw&oe=6300E74A"),
                  fit: BoxFit.cover),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                    width: 292
                ),
                MaterialButton(
                  onPressed: null,
                  color: Colors.orange,
                  shape: CircleBorder(),
                  child: Icon(Icons.favorite,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Combava lavoured rum",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                Text("Ar 25000",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                      color: Colors.orange,
                  ),)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 12,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 25,),
                    Icon(Icons.star, color: Colors.orange, size: 25,),
                    Icon(Icons.star, color: Colors.orange, size: 25,),
                    Icon(Icons.star, color: Colors.orange, size: 25,),
                    Icon(Icons.star_border, color: Colors.orange, size: 25,),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text("4.3(235 reviews)", style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w500 ),),
                SizedBox(
                  height: 30,
                ),
                Container(
                    child: Text("Description",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                  ),//description
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiamrahona ut ullamcorper velit, ultricies consectetur nunc. In hac habitasse platea dictumst. '),
                ),//descripton_end
                SizedBox(
                  height: 18,
                ),
                Container(
                  child: Text("Customize your rum",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 10,
                ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    padding: EdgeInsets.all(10),
                    width: 370,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.local_drink, size: 20,),
                        Text('Select quantity',
                          style: TextStyle(
                              color: Colors.black87,fontWeight: FontWeight.w600),),
                        SizedBox(width: 150,),
                        Icon(Icons.arrow_drop_down, size: 20,)
                      ],
                    ),
                  ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  padding: EdgeInsets.all(10),
                  width: 370,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.list, size: 20,),
                      Text('Select jsp',
                        style: TextStyle(
                            color: Colors.black87,fontWeight: FontWeight.w600),),
                      SizedBox(width: 150,),
                      Icon(Icons.arrow_drop_down, size: 20,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),//costumization_end
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Number of bottle",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                     SizedBox(
                       width: 40,
                     ),
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20.0),
                          color: Colors.orange,
                           boxShadow: [
                             BoxShadow(
                                 color: Colors.orange,
                                 spreadRadius: 1.0
                             )
                           ]
                      ),
                       padding: EdgeInsets.all(5),
                       margin: EdgeInsets.only(right: 5.0),
                       width: 60,
                       child: Text('-',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.w800,
                             color: Colors.white),),
                     ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.orange,
                              spreadRadius: 2.0
                          )
                          ]
                      ),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(right: 5.0),
                      width: 60,
                      child: Text('1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.orange, ),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.orange,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.orange,
                                spreadRadius: 1.0
                            )
                          ]
                      ),
                      padding: EdgeInsets.all(5),
                      width: 60,
                      child: Text('+',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),),
                    ),
                       ],
                      ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.orange,
                  ),

                  width: 370,
                  child: TextButton(
                    child: Text('ADD TO CART',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => CartItem(),
                        )
                    );
                  },
                  ),
                ),

                    ]


                ),
               )]
              )
              )
              );
  }
}

