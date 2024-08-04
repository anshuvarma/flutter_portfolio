// ignore_for_file: unused_import, unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:web_app/widgets/column_card_widget.dart';
import 'package:web_app/widgets/divider_widget.dart';
import 'package:web_app/widgets/mobile_appBar.dart';
import 'package:web_app/widgets/row_card_widget.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> appBarText = [
      "Home",
      "Skills",
      "Experience",
      "Projects",
      "Education"
    ];
    List<String> cardTitles = ["Graduation", "Higher Secondary", "Secondary"];
    List<List<Widget>> cardDesc = [
      [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Degree : Bachelor of Engineering',
              style: AppColors.cardDesc,
            ),
            SizedBox(height: 10.0),
            Text(
              'Specialization: Computer Engineering',
              style: AppColors.cardDesc,
            ),
            SizedBox(height: 10.0),
            Text(
              'College : Datta Meghe College of Engineering',
              style: AppColors.cardDesc,
            ),
            SizedBox(height: 10.0),
            Text(
              'May 2018 - May 2022 - 4 years ',
              style: AppColors.cardDesc,
            ),
            SizedBox(height: 10.0),
            Text(
              'Score : 9.17 CGPA',
              style: AppColors.cardDesc,
            ),
          ],
        ),
      ],
      [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Degree : Higher Secondary School',
              style: AppColors.cardDesc,
            ),
            SizedBox(height: 10.0),
            Text(
              'Specialization: Science',
              style: AppColors.cardDesc,
            ),
            SizedBox(height: 10.0),
            Text(
              'College : R.K.Talreja Jr College',
              style: AppColors.cardDesc,
            ),
            SizedBox(height: 10.0),
            Text(
              'May 2016 - May 2018 - 2 years ',
              style: AppColors.cardDesc,
            ),
            SizedBox(height: 10.0),
            Text(
              'Score : 76%',
              style: AppColors.cardDesc,
            ),
          ],
        ),
      ],
      [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Degree : Secondary School',
              style: AppColors.cardDesc,
            ),
            SizedBox(height: 10.0),
            Text(
              'School : New Era English High',
              style: AppColors.cardDesc,
            ),
            SizedBox(height: 10.0),
            Text(
              'May 2003 - May 2013 - 13 years ',
              style: AppColors.cardDesc,
            ),
            SizedBox(height: 10.0),
            Text(
              'Score : 85.40%',
              style: AppColors.cardDesc,
            ),
          ],
        ),
      ]
    ];
    return LayoutBuilder(builder: (context, constraints) {
      final isMobile = constraints.maxWidth <= 600;
      return Scaffold(
        appBar: AppBarWidget(currentRoute: '/education'),
        endDrawer:
            MediaQuery.of(context).size.width <= 600 ? MobileAppBar() : null,
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
                Text("Educational Background",
                    textAlign: TextAlign.center, style: AppColors.heading),
                SizedBox(
                  height: 20.0,
                ),
                Text("A glimpse into my academic journey ",
                    textAlign: TextAlign.center, style: AppColors.subHeading),
                SizedBox(
                  height: 10.0,
                ),
                // DividerWidget(),
                // SizedBox(
                //   height: 20.0,
                // ),
                Expanded(
                  child: ColumnCardWidget(
                    mainAxisExtent: isMobile ? 250.0 : 270.0,
                    cardTitles: cardTitles,
                    cardDesc: cardDesc,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
