import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:portfolio/widgets/responsive.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              NavBar(),
              SizedBox(
                height: 60,
              ),
              Body()
            ],
          )
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(largeScreen: LargeScreen());
  }
}

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image.asset(
              //   "assets/fireflut.png"
              // ),
              Text(
                "Mission",
                style: GoogleFonts.quicksand(
                    textStyle:
                        TextStyle(fontSize: 80, fontWeight: FontWeight.w700)),
              )
            ],
          ),
          // Image.asset(
          //   "assets/fireflut.png"
          // ),
        ],
      ),
    );
  }
}
