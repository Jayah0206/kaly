import 'package:flutter/material.dart';
import 'package:kaly/main.dart';
import 'package:kaly/views/home/widgets/app_bar.dart';
import 'package:kaly/views/profile/profile.dart';


class  Cart {
  String name;
  String price;
  String image;
  String sources;


  Cart({
    required this.image,
    required this.name,
    required this.price,
    required this.sources
  });
}

class CartItem extends StatefulWidget {
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State {

  List cartlist = [
    Cart(image: "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/277169149_3162551240656419_1012256552984131747_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=102&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGCaDZRfr_sKh8-qL1raKZHEMuY8jfIn-UQy5jyN8if5RmgLciHStPz_jLTGiEnGfY9PyLCTUzcinrLfnAoTvJD&_nc_ohc=U34xuF-2VDAAX95w2d9&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8duiE_sIgz8bOs0Za5gcj1bSXuBapUqFmzIRek26syjw&oe=6300E74A",
        name: "Combava flavoured Rum",
        price: "Ar 25000",
        sources: "Combava - 303"),
    Cart(image: "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/277169149_3162551240656419_1012256552984131747_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=102&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGCaDZRfr_sKh8-qL1raKZHEMuY8jfIn-UQy5jyN8if5RmgLciHStPz_jLTGiEnGfY9PyLCTUzcinrLfnAoTvJD&_nc_ohc=U34xuF-2VDAAX95w2d9&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8duiE_sIgz8bOs0Za5gcj1bSXuBapUqFmzIRek26syjw&oe=6300E74A",
        name: "Combava flavoured Rum",
        price: "Ar 25000",
        sources: "Combava - 303"),
    Cart(image: "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/277169149_3162551240656419_1012256552984131747_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=102&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGCaDZRfr_sKh8-qL1raKZHEMuY8jfIn-UQy5jyN8if5RmgLciHStPz_jLTGiEnGfY9PyLCTUzcinrLfnAoTvJD&_nc_ohc=U34xuF-2VDAAX95w2d9&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8duiE_sIgz8bOs0Za5gcj1bSXuBapUqFmzIRek26syjw&oe=6300E74A",
        name: "Combava flavoured Rum",
        price: "Ar 25000",
        sources: "Combava - 303"),
    Cart(image: "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/277169149_3162551240656419_1012256552984131747_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=102&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGCaDZRfr_sKh8-qL1raKZHEMuY8jfIn-UQy5jyN8if5RmgLciHStPz_jLTGiEnGfY9PyLCTUzcinrLfnAoTvJD&_nc_ohc=U34xuF-2VDAAX95w2d9&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8duiE_sIgz8bOs0Za5gcj1bSXuBapUqFmzIRek26syjw&oe=6300E74A",
        name: "Combava flavoured Rum",
        price: "Ar 25000",
        sources: "Combava - 303"),
    Cart(image: "https://scontent.ftnr5-1.fna.fbcdn.net/v/t39.30808-6/277169149_3162551240656419_1012256552984131747_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=102&ccb=1-7&_nc_sid=9e2e56&efg=eyJpIjoidCJ9&_nc_eui2=AeGCaDZRfr_sKh8-qL1raKZHEMuY8jfIn-UQy5jyN8if5RmgLciHStPz_jLTGiEnGfY9PyLCTUzcinrLfnAoTvJD&_nc_ohc=U34xuF-2VDAAX95w2d9&_nc_ht=scontent.ftnr5-1.fna&oh=00_AT8duiE_sIgz8bOs0Za5gcj1bSXuBapUqFmzIRek26syjw&oe=6300E74A",
        name: "Combava flavoured Rum",
        price: "Ar 25000",
        sources: "Combava - 303"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
        appBar: MyAppBar(),
        body: Column(
          children: [
            Container(
              height: 450,
              padding: EdgeInsets.all(10.0),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: cartlist.length,
                  itemBuilder: (context, index){
                  return Container(
                      height: 100,
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                                  image:NetworkImage(cartlist[index].image.toString()) ,                      fit: BoxFit.cover
                        ),
                        ),
                     ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(cartlist[index].name.toString(),  maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                            SizedBox(height: 5,),
                            Text(cartlist[index].sources.toString(), maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 13, color: Colors.grey,fontWeight: FontWeight.w600 )),
                            SizedBox(height: 10,),
                            Row(children: [
                              Text(cartlist[index].price.toString(), style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600, color: Colors.orange)),
                              SizedBox(width: 50,),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
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
                                width: 40,
                                height: 30,
                                child: Text('-',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
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
                                width: 40,
                                height: 30,
                                child: Text('1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange, ),),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.orange,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.orange,
                                          spreadRadius: 1.0
                                      )
                                    ]
                                ),
                                padding: EdgeInsets.all(5),
                                width: 40,
                                height: 30,
                                child: Text('+',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),),
                              ),
                            ],)
                          ],
                        ),
                      ),
                    ]
                    )
                    );
                   }
              ),

            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Discount', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black87.withOpacity(.8)),),
                Text('Ar 3.000',style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black87.withOpacity(.8)))
              ],
              )
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Livraison', style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black87.withOpacity(.8)),),
                    Text('Ar 3.000',style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black87.withOpacity(.8)))
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total', style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),),
                    Text('Ar 80.000',style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w800, color: Colors.orange)),
                  ],
                )
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.orange,
              ),

              width: 370,
              child: TextButton(
                child: Text('Check out',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      )
                  );
                },
              ),
            ),
          ],
        )

    );
  }
}
