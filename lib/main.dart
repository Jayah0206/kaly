
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaly/widgets/app_bar.dart';
import 'package:kaly/data/data.dart';
import 'package:kaly/widgets/menu.dart';
import 'package:kaly/widgets/populaire.dart';
import 'package:kaly/widgets/search_bar.dart';
import 'widgets/feature_item.dart';
import 'widgets/les_categories.dart';
import 'package:google_fonts/google_fonts.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kaly',
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF9F5F0),
      extendBodyBehindAppBar: false,
      appBar: MyAppBar(),
      body: getBody(),
      bottomNavigationBar: menu(),

    );
  }

getBody() {
  return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Text("Hello Jayah", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF000000)),),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: RichText(
              text: TextSpan(
                  text: 'But why is the',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,color:Color(0xFF000000)
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: ' RUM ',
                        style: TextStyle(color:Color(0xffF4991A)
                        )),
                    TextSpan(
                        text: ' gone ?',),
                  ]
              ),
            ),
          ),
          SearchBar(),
          Container(
            margin: EdgeInsets.only(left: 15, right:15),
            height: 150,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://www.dedanu.com/wp-content/uploads/2020/03/rhum-300x200.jpg",)
                )
            ),
          ),
          SizedBox(height: 25,),
          Container(
            child: listCategories()
          ),

          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF000000)),),
                Text("See all", style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.8))),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: listPopulars(),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Text("Featured", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: listFeatured(),
          ),
          SizedBox(height: 20,),
        ]
      )
  );
}

  listCategories() {
    List<Widget> lists = List.generate(categories.length, (index) => Category(data: categories[index]));
    lists.insert(0, Category(
      data: {
        "name" : "Tous nos produits"
      },
      seleted: true,)
    );
    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 5, left: 15),
        child: Row(
            children: lists
        ),
      );
   }

  listPopulars(){
    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 15),
        child: Row(
          children: List.generate(populars.length, (index) => PopularItem(data: populars[index])
          ),
        ),
      );
  }
  listFeatured(){
    return
      Column(
        children: List.generate(featured.length,
                (index) => FeaturedItem(data: featured[index])
        ),
      );
  }
  }





























































































