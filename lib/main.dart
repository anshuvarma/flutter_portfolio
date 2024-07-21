// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:web_app/pages/education_page.dart';
import 'package:web_app/pages/error_page.dart';
import 'package:web_app/pages/experience_page.dart';
import 'package:web_app/pages/home_page.dart';
import 'package:web_app/pages/projects_page.dart';
import 'package:web_app/pages/skills_page.dart';
import 'package:web_app/widgets/mobile_appBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        final Map<String, WidgetBuilder> routes = {
          '/': (context) => HomePage(),
          '/skills': (context) => SkillsPage(),
          '/experience': (context) => ExperiencePage(),
          '/projects': (context) => ProjectsPage(),
          '/education': (context) => EducationPage(),
        };
        final WidgetBuilder? builder = routes[settings.name];
        if (builder != null) {
          return MaterialPageRoute(builder: builder);
        }
        return MaterialPageRoute(builder: (context) => ErrorPage());
      },
    );
  }
}
