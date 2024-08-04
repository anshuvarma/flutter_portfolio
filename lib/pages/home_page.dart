import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/pages/education_page.dart';
import 'package:web_app/pages/experience_page.dart';
import 'package:web_app/pages/projects_page.dart';
import 'package:web_app/pages/skills_page.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:web_app/widgets/column_card_widget.dart';
import 'package:web_app/widgets/divider_widget.dart';
import 'package:web_app/widgets/mobile_appBar.dart';
import 'package:web_app/widgets/row_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardTitles = ["Introduction", "Background", "Interests"];
    List<List<Widget>> cardDesc = [
      [
        const Text(
            "Hello Everyone, I'm a Software Developer with a bachelor's in Computer Engineering. I specialize in Python, app development, and data analysis. My experience includes developing mobile apps with Flutter and data visualizations with Power BI. Currently, I'm working at Jio Platforms Limited, driving innovative projects and enhancing user experiences. My technical skills and successful project history make me a valuable team asset. I'm keen on exploring cloud computing and DevOps to improve scalability, reliability, and efficiency in software development.",
            // style: TextStyle(color: Colors.black)),
            style: AppColors.cardDesc),
      ],
      [
        const Text('Name: Anshu Varma', style: AppColors.cardDesc),
        const SizedBox(
          height: 5.0,
        ),
        const Text('Birthday: 10 November 2000', style: AppColors.cardDesc),
        const SizedBox(
          height: 5.0,
        ),
        const Text('Location: Mumbai, Maharashtra', style: AppColors.cardDesc),
        const SizedBox(
          height: 5.0,
        ),
        const Text('Gender: Female', style: AppColors.cardDesc),
        const SizedBox(
          height: 5.0,
        ),
        const Text('Communicate: English, Hindi, Marathi',
            style: AppColors.cardDesc),
      ],
      [
        const Text('Watching: Movies, TV Shows', style: AppColors.cardDesc),
        const SizedBox(
          height: 5.0,
        ),
        const Text('Listen: Music & Songs', style: AppColors.cardDesc),
        const SizedBox(
          height: 5.0,
        ),
        const Text('Cook: Indian, Italian, Chinese', style: AppColors.cardDesc),
        const SizedBox(
          height: 5.0,
        ),
        const Text('Travel: As much as I can', style: AppColors.cardDesc),
        const SizedBox(
          height: 5.0,
        ),
        const Text('Technology: Cloud Computing and DevOps Engineering',
            style: AppColors.cardDesc),
      ],
    ];

    return LayoutBuilder(builder: (context, constraints) {
      double screenWidth = MediaQuery.of(context).size.width;
      final isMobile = constraints.maxWidth <= 600;
      return Scaffold(
        appBar: AppBarWidget(currentRoute: '/'),
        endDrawer:
            MediaQuery.of(context).size.width <= 600 ? MobileAppBar() : null,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColors.pageBackgroundColor,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
            child: Column(
              children: [
                const Text(
                  "Hey There, Lets Get Acquainted",
                  style: AppColors.heading,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Read on to find out more about who I am",
                  style: AppColors.subHeading,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10.0),
                //  DividerWidget(),
                // const SizedBox(height: 20.0),
                Expanded(
                  child: ColumnCardWidget(
                    mainAxisExtent: isMobile ? 330.0 : 350.0,
                    cardTitles: cardTitles,
                    cardDesc: cardDesc,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
