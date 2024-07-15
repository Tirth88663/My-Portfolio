import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<String> drawerTitles = [
      "About Me",
      "Skills",
      "Projects",
      "Contact Me",
      "Resume",
    ];
    String intro =
        "Welcome! I'm Tirth Patel, a passionate developer with a knack for "
        "creating innovative solutions that make a difference. "
        "With a strong background in software development and cloud technologies, "
        "I thrive on turning ideas into impactful applications. "
        "My journey is driven by a love for learning and a commitment to delivering "
        "excellence in every project. Let's build something amazing together!";
    return Scaffold(
      endDrawerEnableOpenDragGesture: true,
      appBar: AppBar(
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
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: Center(
          child: ListView.builder(
              itemCount: drawerTitles.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(
                  left: width * 0.09,
                  right: width * 0.04,
                  bottom: width * 0.75),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    drawerTitles[index],
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
                    intro,
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
                        padding: const EdgeInsets.all(8),
                        height: 60,
                        width: 60,
                        color: Colors.red,
                        child: Image.asset("assets/logo.png"),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
