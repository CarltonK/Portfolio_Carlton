import 'package:flutter/material.dart';
import 'package:portfolio/widgets/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatelessWidget {
  //Items that will appear in the top left Navigation Bar
  final navItems = ["Home", "Projects", "Blog", "About"];

  List<Widget> navItem() {
    return navItems
        .map((item) => Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                item,
                style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                )),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: ResponsiveLayout.isSmallScreen(context) ? 40 : 130,
          right: ResponsiveLayout.isSmallScreen(context) ? 40 : 130,
          top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 60,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Center(
              child: Text(
                'Carlton',
                style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1)),
              ),
            ),
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...navItem()]..add(
                  Container(
                    width: 120,
                    height: 40,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Colors.lightGreen[300],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ]),
                    child: Center(
                      child: Text('Contact',
                          style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700))),
                    ),
                  ),
                ),
            )
        ],
      ),
    );
  }
}
