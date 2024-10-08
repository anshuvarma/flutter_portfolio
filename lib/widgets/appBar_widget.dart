import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/widgets/divider_widget.dart'; // Assuming you have this widget
import 'package:web_app/widgets/mobile_appBar.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String currentRoute;

  AppBarWidget({super.key, required this.currentRoute});

  // Define URLs
  final List<String> urls = [
    "https://www.linkedin.com/in/anshu-varma-32b99b1ba/",
    "https://github.com/anshuvarma",
    "https://www.instagram.com/anshu.n.varma?r=nametag",
    "https://docs.google.com/document/d/1kuhuJAiaFCBl3ckXsfoT2O0f9_4aRr2r/edit?usp=sharing&ouid=106733988499391269666&rtpof=true&sd=true"
  ];

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Define the routes
    final List<String> appBarText = [
      "Home",
      "Skills",
      "Experience",
      "Projects",
      "Education",
    ];

    final List<String> routes = [
      '/',
      '/skills',
      '/experience',
      '/projects',
      '/education',
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return mobileLayoutHome();
        } else {
          return webLayoutHome(appBarText, context, routes);
        }
      },
    );
  }

  AppBar mobileLayoutHome() {
    return AppBar(
      shadowColor: Colors.cyan.shade100,
      backgroundColor: AppColors.appBarBackgroundColor,
      iconTheme: const IconThemeData(
        size: 20.0,
        color: Colors.black,
      ),
      title: const Text(
        "Anshu Varma",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey,
          height: 1.0,
          width: double.infinity,
        ),
      ),
    );
  }

  AppBar webLayoutHome(
      List<String> appBarText, BuildContext context, List<String> routes) {
    return AppBar(
      shadowColor: Colors.cyan.shade100,
      backgroundColor: AppColors.appBarBackgroundColor,
      iconTheme: const IconThemeData(
          size: 20.0,
          color: Colors.black), // Set the back arrow icon color to white
      title: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Anshu Varma",
                  style: TextStyle(color: Colors.black),
                ),
                Row(
                  children: [
                    for (int i = 0; i < appBarText.length; i++)
                      TextButton(
                        onPressed: () {
                          // Navigate to the respective route
                          Navigator.pushNamed(context, routes[i]);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              appBarText[i],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: currentRoute == routes[i]
                                      ? Colors.lightBlue
                                      : Colors.black),
                            ),
                            if (currentRoute == routes[i])
                              Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                width: 4,
                                height: 4,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.lightBlue,
                                ),
                              ),
                          ],
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'assets/images/linkedin.png',
                        height: 24.0,
                        width: 24.0,
                      ),
                      onPressed: () {
                        _launchURL(urls[0]);
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/github.png',
                        height: 24.0,
                        width: 24.0,
                      ),
                      onPressed: () {
                        _launchURL(urls[1]);
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/instagram.png',
                        height: 24.0,
                        width: 24.0,
                      ),
                      onPressed: () {
                        _launchURL(urls[2]);
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/resume.png',
                        height: 24.0,
                        width: 24.0,
                      ),
                      onPressed: () {
                        _launchURL(urls[3]);
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            // Uncomment the line below if you want to use your DividerWidget
            // DividerWidget(),

            // Or use the Container to add a line
            // Container(
            //   width: double.infinity,
            //   color: Colors.grey, // Change this color to match your design
            //   height: 1.0,
            // ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey,
          height: 1.0,
          width: double.infinity,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 0);
}
