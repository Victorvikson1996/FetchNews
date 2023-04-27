import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/provider/news_provider.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getNews = ref.watch(newsProvider);

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
              onPressed: () {}, icon: const Icon(FluentIcons.search_12_regular))
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
                      image: AssetImage('asset/openai.jpg'), fit: BoxFit.cover),
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
                        const Gap(6),
                        const Text(
                          'Author: Kyle Walker',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(12),
              // recommended for you
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommended for you",
                      style: GoogleFonts.spaceGrotesk(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  const Text(
                    "Show More",
                  )
                ],
              ),

              // fetch Data Section
              const Gap(14),
              getNews.when(
                data: (data) => ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (context, index) => Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.network(data[index].urlToImage!),
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  Text(data[index].title!),
                                ],
                              ))
                            ],
                          ),
                        )),
                error: (error, stackTrace) => const Center(
                  child: Text("ERROR"),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.home_12_regular), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.communication_16_regular),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.bookmark_16_regular), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.person_12_regular), label: 'Profile'),
        ],
      ),
    );
  }
}
