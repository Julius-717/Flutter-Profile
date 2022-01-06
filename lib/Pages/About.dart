import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff040305),
      appBar: AppBar(
        backgroundColor: Color(0xff040305),
        elevation: 0,
        title: Text('About Me', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardTop(icon: Icons.person_outline_rounded, text: 'About Me', isColor: true),
                  CardTop(icon: Icons.work_outline_outlined, text: 'Experience', isColor: false, page: ExperiencePage()),
                  CardTop(icon: Icons.stacked_line_chart_sharp, text: 'Education', isColor: false, page: EducationPage()),
                ],
              ),

              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff1F1E25),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
              SizedBox(height: 15.0),
              Text('Interests', style: TextStyle(color: Colors.white, fontSize: 18),),
              SizedBox(height: 15.0),

              Column(
                children: [
                  Row(children: [
                    Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff1F1E25),
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Text('Fullstack Developer', style: TextStyle(color: Colors.white, fontSize: 15),),
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