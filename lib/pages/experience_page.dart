import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:web_app/widgets/column_card_widget.dart';
import 'package:web_app/widgets/divider_widget.dart';
import 'package:web_app/widgets/mobile_appBar.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<Widget>> experienceCardTitles = [
      [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Software Developer',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'May 2024 - Present',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
      [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Graduate Engineer Trainee',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Dec 2022 - June 2023',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
      [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Internship',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Jul 2021 - Sep 2021',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    ];
    List<List<Widget>> experienceCardDesc = [
      [
        const Text(
          "FLUTTER DEVELOPER",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 5.0),
        const Text(
          "Driving the creation of People First, a cutting-edge mobile application developed with Flutter, has significantly enhanced interactions for over 550,000 users in real time. By integrating 22 essential HR processes—including hiring, onboarding, engagement, and offboarding—the application streamlines workflows and boosts productivity. Its user-centric design not only improves overall efficiency but also ensures a seamless and engaging experience, fostering a more connected and productive workforce",
          style: TextStyle(color: Colors.white),
        ),
      ],
      [
        const Text(
          "POWER BI DEVELOPER",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 5.0),
        const Text(
          "Developed MongoDB views with sophisticated lookups, grouping, projection, and matching that resulted in a 35% increase in data filtering efficiency. 50% less manual ETL work was required when using Airbyte to integrate MongoDB as a source and PostgreSQL as a destination. created an interactive, dynamic Power BI dashboard that improved data presentation by 40% and used DAX queries to get accurate attendance data. Oversaw gradual data refreshes for in-the-moment database changes.",
          style: TextStyle(color: Colors.white),
        ),
      ],
      [
        const Text(
          "DATA SCIENCE & BUSINESS ANALYTICS",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 5.0),
        const Text(
          "During my internship, I utilized Python to implement unsupervised machine learning techniques on the 'Iris' dataset. By applying KMeans clustering and employing the elbow method, I identified the optimal number of clusters. Visualizing these clusters not only facilitated the segmentation of Iris-setosa, Iris-versicolour, and Iris-virginica species based on their characteristics but also demonstrated my proficiency in data analysis and interpretation using machine learning algorithms.",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ];
    List<String> cardTitles = [
      "Jio Platforms Limited",
      "Jio Platforms Limited",
      "Internship - The Sparks Foundation"
    ];

    return Scaffold(
      appBar: AppBarWidget(currentRoute: '/experience'),
      endDrawer:
          MediaQuery.of(context).size.width < 600 ? MobileAppBar() : null,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(221, 13, 12, 12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: Column(
            children: [
              const Text(
                "Professional Journey",
                textAlign: TextAlign.center,
                style: AppColors.heading,
              ),
              const SizedBox(height: 20.0),
              const Text(
                "From past internship to present employment",
                textAlign: TextAlign.center,
                style: AppColors.subHeading,
              ),
              const SizedBox(height: 30.0),
              DividerWidget(),
              const SizedBox(height: 20.0),
              Expanded(
                child: ColumnCardWidget(
                  mainAxisExtent: 370,
                  cardTitles: cardTitles,
                  cardTitle2: experienceCardTitles,
                  cardDesc: experienceCardDesc,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
