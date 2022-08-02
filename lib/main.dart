
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaly/app_bar.dart';
import 'package:kaly/menu.dart';
import 'package:kaly/populaire.dart';
import 'package:kaly/search_bar.dart';
import 'details.dart';
import 'les_categories.dart';
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
                  text: 'Find your own',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,color:Color(0xFF000000)
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: ' Meals',
                        style: TextStyle(color:Color(0xffF4991A)
                        )),
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
                    image: NetworkImage("https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",)
                )
            ),
          ),
          SizedBox(height: 25,),
          Container(
              margin: EdgeInsets.only(left: 0),
              child: LesCategory()),
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
          Popular(),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Text("Featured", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: details(),
          ),
          SizedBox(height: 20,),
          details(),
        ]
      )
  );
  }
}



























































































