import 'package:flutter_profile/Pages/About.dart';
import 'package:flutter_profile/Pages/ExperiencePage.dart';
import 'package:flutter_profile/Widgets/CardCustom.dart';
import 'package:flutter_profile/Widgets/CardTop.dart';
import 'package:flutter/material.dart';


class EducationPage extends StatelessWidget
{
  const EducationPage({Key? key}) : super(key: key);


 @override
 Widget build(BuildContext context)
 {
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
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CardTop(icon: Icons.person_outline_rounded, text: 'About Me', isColor: false, page: Profile()),
                    CardTop(icon: Icons.work_outline_outlined, text: 'Experience', isColor: false, page: ExperiencePage()),
                    CardTop(icon: Icons.stacked_line_chart_sharp, text: 'Education', isColor: true, page: EducationPage(), ),
                  ],
                ),

                const SizedBox(height: 15.0),
                const CardCustom(text: 'Bachelor in Computer Science',colorIcon: Color(0xffA36FF6), isEducation: true, education: '2014 - 2019 . University',),
                const CardCustom(text: 'Certificate in Software Development',colorIcon: Color(0xffA36FF6), isEducation: true, education: '2019 - 2020 . Moringa School',),
                const CardCustom(text: 'Certificate in App Development',colorIcon: Color(0xffA36FF6), isEducation: true, education: '2020 - 2021 . Udemy',),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        color: const Color(0xff1F1E25),
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star_border_outlined, color: Color(0xffA36FF6), size: 35),
                          SizedBox(height:5),
                          Text('Web Developer', style: TextStyle(color: Colors.white, fontSize: 16)),
                          SizedBox(height:5),
                          Text('2020', style: TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        color: const Color(0xff1F1E25),
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star_border_outlined, color: Color(0xffA36FF6), size: 35),
                          SizedBox(height:5),
                          Text('App Developer', style: TextStyle(color: Colors.white, fontSize: 16)),
                          SizedBox(height:5),
                          Text('2021', style: TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                    )
                  ],
                )
            ],
          ),
        ),
      ),
     );
  }
}