import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: const Text(
            "Fetch News",
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(FluentIcons.alert_12_regular),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(FluentIcons.search_12_regular))
          ],
        ),
        drawer: const Drawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
                // breaking news and show more section
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Breaking News",
                          style: GoogleFonts.spaceGrotesk(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      const Text(
                        "Show More",
                      )
                    ],
                  ),
                  // card news section
                  const Gap(12),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          image: AssetImage('asset/openai.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Tech Crunch',
                              style: TextStyle(
                                color: Colors.yellow,
                              ),
                            ),
                            Text(
                              'Yep, Learning Man is becoming a things',
                              style: GoogleFonts.spaceGrotesk(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Text(
                              'Author: Kyle Walker',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ));
  }
}
