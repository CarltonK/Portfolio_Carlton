import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/utils/backgroundPainter.dart';
import 'package:portfolio/utils/breakpoint.dart';
import 'package:portfolio/utils/cursor.dart';
import 'package:portfolio/widgets/heroBtn.dart';

//Items that will appear in the top left Navigation Bar
final navItems = ["Home", "Projects", "Blog", "Contact"];

class Home extends StatelessWidget {
  void hirePressed(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => AboutMe(),
    ));
  }

  void aboutPressed(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => AboutMe(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isTablet = size.width > 1000;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: BackgroundPainter(),
          ),
          ListView(
            children: [
              _appBar(size, isTablet),
              Wrap(
                alignment: WrapAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: [
                  Container(
                    height: breakpoint(size.width, size.height * .7, 200, 100),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: breakpoint(
                          size.width,
                          CrossAxisAlignment.start,
                          CrossAxisAlignment.center,
                          CrossAxisAlignment.center),
                      mainAxisAlignment: breakpoint(
                          size.width,
                          MainAxisAlignment.center,
                          MainAxisAlignment.center,
                          MainAxisAlignment.end),
                      children: [
                        Text(
                          'Mark Carlton',
                          style: GoogleFonts.quicksand(
                              fontSize: breakpoint(size.width, 75, 55, 50),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 12),
                        ),
                        Text(
                          'Flutter Mobile Developer / Firebase Backend Expert',
                          style: GoogleFonts.quicksand(
                            fontSize: breakpoint(size.width, 22, 20, 14),
                            color: Colors.black26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            HeroBtn(
                              title: 'Know more',
                              callback: () => aboutPressed(context),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            HeroBtn(
                              title: 'Hire me',
                              isOutline: true,
                              callback: () => hirePressed(context),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(350),
                    child: Image.asset(
                      'hawks2.jpg',
                      fit: BoxFit.cover,
                      width: 700,
                      height: 650,
                    ),
                  ),
                ],
              ),
            ],
          ),
          isTablet
              ? Positioned(
                  left: 120,
                  bottom: 60,
                  child: Cursor(
                      child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Color(0xFF3753AA).withOpacity(.2),
                          offset: Offset(10, 10),
                          blurRadius: 10)
                    ]),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                    ),
                  )))
              : Container()
        ],
      ),
    );
  }
}

_appBar(Size size, bool isTablet) => Container(
      height: 85,
      padding: EdgeInsets.only(right: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          isTablet
              ? Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Row(
                    children: navItems
                        .map((nav) => Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Cursor(
                                child: Text(
                                  nav.toUpperCase(),
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                )
              : IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                )
        ],
      ),
    );
