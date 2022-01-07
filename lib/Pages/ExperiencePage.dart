import 'package:flutter_profile/Pages/About.dart';
import 'package:flutter_profile/Pages/EducationPage.dart';
import 'package:flutter_profile/Widgets/CardCustom.dart';
import 'package:flutter_profile/Widgets/CardTop.dart';
import 'package:flutter/material.dart';


class ExperiencePage extends StatelessWidget
{
  const ExperiencePage({Key? key}) : super(key: key);


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
                    CardTop(icon: Icons.work_outline_outlined, text: 'Experience', isColor: true, page: ExperiencePage(),),
                    CardTop(icon: Icons.stacked_line_chart_sharp, text: 'Education', isColor: false, page: EducationPage()),
                  ],
                ),

                const SizedBox(height: 15.0),
                const CardCustom(text: 'Freelance Web Designer',colorIcon: Color(0xffA36FF6), isEducation: false, education: '',),
                const CardCustom(text: 'Junior Web Developer',colorIcon: Color(0xff83DBC5), isEducation: false, education: '',),
                const CardCustom(text: 'Freelance Web Developer',colorIcon: Color(0xffE62755), isEducation: false, education: '',),
                const CardCustom(text: 'Senior Flutter Developer',colorIcon: Color(0xffF7605D), isEducation: false, education: '',),
            ],
          ),
        ),
      ),
     );
  }
}

