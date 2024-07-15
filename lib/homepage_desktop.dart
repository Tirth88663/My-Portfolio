import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'consts.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // Header
            SizedBox(
              height: width * 0.08,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //logo
                    Image.asset(
                      "assets/logo.png",
                      height: 40,
                      width: 40,
                    ),
                    //buttons
                    Row(
                      children: [
                        TextButton(
                          child: Text(
                            "About Me",
                            style: GoogleFonts.sora(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: Text(
                            "Skills",
                            style: GoogleFonts.sora(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: Text(
                            "Projects",
                            style: GoogleFonts.sora(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        TextButton(
                          child: Text(
                            "Contact Me",
                            style: GoogleFonts.sora(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    //resume button
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.download_outlined,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Resume",
                        style: GoogleFonts.sora(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Hero Section
            SizedBox(
              width: width,
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: width * 0.06, vertical: width * 0.0), //0.02
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: width * 0.45,
                        left: width * 0.02,
                        top: width * 0.04,
                        bottom: width * 0.04,
                      ),
                      padding: EdgeInsets.symmetric(vertical: width * 0.02),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Hello I'm ",
                                style: GoogleFonts.sora(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: width * 0.035, //48
                                  ),
                                ),
                              ),
                              Text(
                                "Tirth Patel.",
                                style: GoogleFonts.sora(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: width * 0.035,
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
                                    fontSize: width * 0.035,
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
                                    fontSize: width * 0.045,
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
                                    fontSize: width * 0.035,
                                  ),
                                ),
                              ),
                              Text(
                                "India.",
                                style: GoogleFonts.sora(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: width * 0.035,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: width * 0.02),
                          Text(
                            Constants.intro,
                            style: GoogleFonts.sora(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: width * 0.01,
                              ),
                            ),
                          ),
                          SizedBox(height: width * 0.015),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(width * 0.005),
                                height: width * 0.04,
                                width: width * 0.04,
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
                              SizedBox(width: width * 0.02),
                              Container(
                                padding: EdgeInsets.all(width * 0.005),
                                height: width * 0.04,
                                width: width * 0.04,
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
                              SizedBox(width: width * 0.02),
                              Container(
                                padding: EdgeInsets.all(width * 0.005),
                                height: width * 0.04,
                                width: width * 0.04,
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
                              SizedBox(width: width * 0.02),
                              Container(
                                padding: EdgeInsets.all(width * 0.005),
                                height: width * 0.04,
                                width: width * 0.04,
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: width * 0,
                        bottom: width * 0,
                        left: width * 0.3,
                        right: width * 0,
                      ),
                      child: Image.asset(
                        "assets/banner.png",
                        height: width * 0.4,
                        width: width * 0.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //skills section
            SizedBox(
              width: width,
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: width * 0.06, vertical: width * 0.04),
                child: Column(
                  children: [
                    Text(
                      "Skills",
                      style: GoogleFonts.sora(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: width * 0.035,
                        ),
                      ),
                    ),
                    SizedBox(height: width * 0.04),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: Constants.skillIcons.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(width * 0.03),
                          decoration: BoxDecoration(
                            color:
                                (index % 2 == 0) ? Colors.black : Colors.white,
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
                                "assets/${Constants.skillIcons[index]}.png",
                                height: width * 0.05,
                                width: width * 0.05,
                              ),
                              Text(
                                Constants.skillNames[index],
                                style: GoogleFonts.sora(
                                  textStyle: TextStyle(
                                    color: (index % 2 == 0)
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: width * 0.015,
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
                        crossAxisCount: 5,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 1,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
