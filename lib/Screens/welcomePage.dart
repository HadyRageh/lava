// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lava/Screens/BriefPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 125,
              ),
              Image.asset(
                'assets/images/image1.png',
                width: 292,
                height: 106,
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Hi There! ',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Thank you for downloading',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff5E5E5E),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'the LAVA App.',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff5E5E5E),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              RousableText(textt: 'we take pride in providing top-of-the-line'),
              SizedBox(
                height: 2,
              ),
              RousableText(textt: 'car care solutionshere in LAVA CAR.'),
              SizedBox(
                height: 2,
              ),
              RousableText(textt: 'our staff is committed to deliver you'),
              SizedBox(
                height: 2,
              ),
              RousableText(textt: 'excellent serviceand makes sure'),
              SizedBox(
                height: 2,
              ),
              RousableText(textt: 'that your ride looks great again!'),
              SizedBox(
                height: 27,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PriefPage()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color(0xff0190F9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFEFEFE),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RousableText extends StatelessWidget {
  RousableText({super.key, required this.textt});
  final textt;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(textt,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w400,
              color: Color(0xff5E5E5E),
              // color: Color(0xff3D89D0),
            )),
        SizedBox(
          height: 2,
        ),
      ],
    );
  }
}
