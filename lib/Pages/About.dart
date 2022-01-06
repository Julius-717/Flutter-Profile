import 'package:flutter/material.dart';

import 'package:flutter_profile/Widgets/ProgressBarCustom.dart';
import 'package:flutter_profile/Widgets/CardTop.dart';
import 'package:flutter_profile/Pages/EducationPage.dart';
import 'package:flutter_profile/Pages/ExperiencePage.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff040305),
      appBar: AppBar(
        backgroundColor: const Color(0xff040305),
        elevation: 0,
        title: const Text('About Me', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CardTop(icon: Icons.person_outline_rounded, text: 'About Me', isColor: true, page: AboutMePage(),),
                  CardTop(icon: Icons.work_outline_outlined, text: 'Experience', isColor: false, page: ExperiencePage()),
                  CardTop(icon: Icons.stacked_line_chart_sharp, text: 'Education', isColor: false, page: EducationPage()),
                ],
              ),

              const SizedBox(height: 15.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff1F1E25),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Skills', style: TextStyle(color: Colors.white, fontSize: 18),),
                    SizedBox(height: 30.0),
                    ProgressBarCustom(skill: 'Python', percentage: '90', color: Color(0xffA36FF6)),
                    ProgressBarCustom(skill: 'Javascript E6', percentage: '80', color: Color(0xffA36FF6)),
                    ProgressBarCustom(skill: 'Flutter', percentage: '87', color: Color(0xffA36FF6)),
                    ProgressBarCustom(skill: 'HTML5', percentage: '95', color: Color(0xffA36FF6)),
                    ProgressBarCustom(skill: 'CSS3', percentage: '95', color: Color(0xffA36FF6)),
                    ProgressBarCustom(skill: 'Kotlin', percentage: '55', color: Color(0xffA36FF6)),
                    ProgressBarCustom(skill: 'Ruby', percentage: '50', color: Color(0xffA36FF6)),
                    ProgressBarCustom(skill: 'Data Science', percentage: '75', color: Color(0xffA36FF6)),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              const Text('Interests', style: TextStyle(color: Colors.white, fontSize: 18),),
              const SizedBox(height: 15.0),

              Column(
                children: [
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: const Color(0xff1F1E25),
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: const Text('Fullstack Developer', style: TextStyle(color: Colors.white, fontSize: 15),),
                    )
                  ],)
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}