import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:web_app/widgets/divider_widget.dart';
import 'package:web_app/widgets/mobile_appBar.dart';
import 'package:web_app/widgets/row_card_widget.dart';
import 'package:web_app/widgets/skills_card_column.dart';
import 'package:web_app/widgets/skills_card_row.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardTitles = [
      "Programming Languages",
      "Frameworks & Version Control",
      "Databases",
      "Analytics"
    ];

    List<List<Widget>> cardDesc = [
      // Programming Languages
      [
        const SkillsCardRow(
            label: 'Python', assetPath: 'assets/images/python.png'),
        const SkillsCardRow(label: 'Dart', assetPath: 'assets/images/dart.png'),
        const SkillsCardRow(label: 'C++', assetPath: 'assets/images/c++.png'),
        const SkillsCardRow(
            label: 'Javascript', assetPath: 'assets/images/javascript.png'),
        const SkillsCardRow(label: 'HTML', assetPath: 'assets/images/html.png'),
        const SkillsCardRow(label: 'CSS', assetPath: 'assets/images/css.png'),
      ],

      // Frameworks and Version Control
      [
        const SkillsCardRow(
            label: 'Flutter', assetPath: 'assets/images/flutter.png'),
        const SkillsCardRow(
            label: 'React', assetPath: 'assets/images/reactjs.png'),
        const SkillsCardRow(
            label: 'NodeJS', assetPath: 'assets/images/nodejs.png'),
        const SkillsCardRow(
            label: 'Github', assetPath: 'assets/images/github.png'),
        // const SkillsCardRow(
        //     label: 'Gitlab', assetPath: 'assets/images/gitlab.png'),
      ],

      // Databases
      [
        const SkillsCardRow(
            label: 'MySQL', assetPath: 'assets/images/mysql.png'),
        const SkillsCardRow(
            label: 'MongoDB', assetPath: 'assets/images/mongodb.png'),
        const SkillsCardRow(
            label: 'PostgreSQL', assetPath: 'assets/images/postgresql.png'),
      ],

      // Analytics
      [
        const SkillsCardRow(
            label: 'Power BI', assetPath: 'assets/images/powerbi.png'),
        const SkillsCardRow(
            label: 'Tableau', assetPath: 'assets/images/tableau.png'),
        const SkillsCardRow(
            label: 'MS Excel', assetPath: 'assets/images/msexcel.png'),
        const SkillsCardRow(label: 'ETL', assetPath: 'assets/images/etl.png'),
      ]
    ];

    return LayoutBuilder(builder: (context, constraints) {
      final isMobile = constraints.maxWidth < 600;
      return Scaffold(
        appBar: AppBarWidget(currentRoute: '/skills'),
        endDrawer:
            MediaQuery.of(context).size.width < 600 ? MobileAppBar() : null,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColors.pageBackgroundColor,
          // color: Colors.black87,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
            child: Column(
              children: [
                const Text(
                  "Tools & Technologies",
                  // "Tools & Technologies",
                  textAlign: TextAlign.center,
                  style: AppColors.heading,
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Explore the technologies that enable me to turn concepts into reality",
                  textAlign: TextAlign.center,
                  style: AppColors.subHeading,
                ),
                const SizedBox(height: 30.0),
                DividerWidget(),
                const SizedBox(height: 20.0),
                Expanded(
                  child: RowCardWidget(
                    mainAxisExtent: isMobile ? 260.0 : 300.0,
                    cardTitles: cardTitles,
                    cardDesc: cardDesc,
                    // maxCrossAxisExtent: 100.0,
                    mainAxisSpacing: 16.0,
                    crossAxisSpacing: 16.0,
                    childAspectRatio: 1.0,
                    // maxCrossAxisExtent: 40.0,
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
