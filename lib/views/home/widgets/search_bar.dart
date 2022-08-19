import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(width/20, width/30, width/20, width/20) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              alignment: Alignment.center,
              height: width/8.5,
              width: width/1.10,
              padding: EdgeInsets.symmetric(horizontal: width/20),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.black.withOpacity(.4),
                            fontWeight: FontWeight.w500,
                            fontSize: 10
                        ),
                        prefixIcon: Icon(
                          Icons.search_outlined, color: Colors.black12.withOpacity(.6),
                        ),
                        hintText: 'Search any rum...',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none),
                        contentPadding: EdgeInsets.zero,
                      )
                  ),
              ),

        ],
      ),
    );
  }
}