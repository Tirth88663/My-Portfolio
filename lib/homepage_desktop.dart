import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 104,
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
                          ),
                        ),
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
