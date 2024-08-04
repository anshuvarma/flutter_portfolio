import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileAppBar extends StatelessWidget {
  MobileAppBar({super.key});

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

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: AppColors.appBarBackgroundColor, borderRadius: null),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                IconButton(
                  icon: Icon(Icons.close, color: Colors.black),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(height: 20),
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
          ),
          for (int i = 0; i < appBarText.length; i++)
            ListTile(
              title: Text(appBarText[i]),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.pushNamed(
                    context, routes[i]); // Navigate to the selected page
              },
            ),
        ],
      ),
    );
  }
}
