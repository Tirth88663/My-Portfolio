import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'consts.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      endDrawerEnableOpenDragGesture: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/logo.png",
            height: 40,
            width: 40,
          ),
        ),
        foregroundColor: Colors.black,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: Center(
          child: ListView.builder(
              itemCount: Constants.drawerTitles.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(
                  left: width * 0.09,
                  right: width * 0.04,
                  bottom: width * 0.75),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    Constants.drawerTitles[index],
                    style: GoogleFonts.sora(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onTap: () {},
                );
              }),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //hero section
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: width * 0.06, horizontal: width * 0.04),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/banner-crop.png",
                      height: width * 0.65,
                    ),
                  ),
                  SizedBox(height: width * 0.06),
                  Row(
                    children: [
                      Text(
                        "Hello I'm ",
                        style: GoogleFonts.sora(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.08, //28
                          ),
                        ),
                      ),
                      Text(
                        "Tirth Patel.",
                        style: GoogleFonts.sora(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: width * 0.08,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Full Stack ",
                        style: GoogleFonts.sora(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: width * 0.08,
                          ),
                        ),
                      ),
                      Text(
                        "Developer",
                        style: GoogleFonts.londrinaOutline(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 2.5,
                            fontSize: width * 0.085,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Based In ",
                        style: GoogleFonts.sora(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.08,
                          ),
                        ),
                      ),
                      Text(
                        "India.",
                        style: GoogleFonts.sora(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: width * 0.08,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: width * 0.05),
                  Text(
                    Constants.intro,
                    style: GoogleFonts.sora(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.035,
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.06),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(width * 0.005),
                        height: width * 0.12,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/linkedin.png",
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.03),
                      Container(
                        padding: EdgeInsets.all(width * 0.005),
                        height: width * 0.12,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/github.png",
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.03),
                      Container(
                        padding: EdgeInsets.all(width * 0.02),
                        height: width * 0.12,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/twitter.png",
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.03),
                      Container(
                        padding: EdgeInsets.all(width * 0.01),
                        height: width * 0.12,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/discord.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //skills section
            SizedBox(
              width: width,
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: width * 0.14),
                child: Column(
                  children: [
                    Text(
                      "Skills",
                      style: GoogleFonts.sora(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: width * 0.08,
                        ),
                      ),
                    ),
                    SizedBox(height: width * 0.08),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: Constants.skillIconsMobile.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(width * 0.04),
                          decoration: BoxDecoration(
                            color:
                                (Constants.whiteIndexMobile.contains(index + 1))
                                    ? Colors.white
                                    : Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/${Constants.skillIconsMobile[index]}.png",
                                height: width * 0.16,
                                width: width * 0.16,
                              ),
                              Text(
                                Constants.skillNamesMobile[index],
                                style: GoogleFonts.sora(
                                  textStyle: TextStyle(
                                    color: (Constants.whiteIndexMobile
                                            .contains(index + 1))
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: width * 0.038,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
