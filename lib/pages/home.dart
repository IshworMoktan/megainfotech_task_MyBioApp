import 'package:flutter/material.dart';
import 'package:mybio/pages/others/about_section.dart';
import 'package:mybio/pages/others/contact_page.dart';
import 'package:mybio/pages/others/education_section.dart';
import 'package:mybio/pages/others/project_section.dart';
import 'package:mybio/pages/others/skill_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.green,
                expandedHeight: 200.0,
                floating: true,
                pinned: true,
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Color(0xffe184cd),
                      Color(0xff5bc6e1),
                    ],
                    stops: [
                      0.25,
                      0.75,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
                  child: FlexibleSpaceBar(
                    centerTitle: true,
                    title: const Text(
                      'My Portfolio',
                      style: TextStyle(color: Colors.white),
                    ),
                    collapseMode: CollapseMode.parallax,
                    background: Image.asset(
                      'assets/images/mydp.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                AboutMeSection(),
                SkillsSection(),
                ProjectsSection(),
                EducationSection(),
                ContactSection(),
              ],
            ),
          )),
    );
  }
}
