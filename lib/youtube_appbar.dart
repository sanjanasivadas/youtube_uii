import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Appbar extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 60,
      backgroundColor: Colors.grey.shade800,
      title: Container(
        margin: EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.youtube,
                  color: Colors.red,
                  size: 32,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "YouTube",
                  style: GoogleFonts.acme(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                ),
              ],
            ),
            Row(
              children: [
                Icon(FontAwesomeIcons.chromecast),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Stack(children: [
                    Icon(FontAwesomeIcons.bell),
                    Positioned(
                      top: 10,
                      right: 1,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red),
                        child: Center(
                            child: Text(
                          "7",
                          style: TextStyle(fontSize: 8),
                        )),
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  maxRadius: 15,
                  minRadius: 5,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/5119838/pexels-photo-5119838.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}