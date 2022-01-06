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
              )
            ],
          ),
        ),
      )
    );
  }
}