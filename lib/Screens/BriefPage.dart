// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lava/Screens/HomePage.dart';
import 'package:lava/Screens/welcomePage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PriefPage extends StatelessWidget {
  PriefPage({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 550,
              child: PageView(
                controller: _controller,
                children: [
                  BriefPageOne(),
                  BriefPageTwo(),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: SwapEffect(
                activeDotColor: Color(0xff0190F9),
                // dotHeight: 20,
                // dotWidth: 20,
                dotColor: Color(0xff0190F9).withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
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
                    'skip',
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
    );
  }
}

class BriefPageOne extends StatelessWidget {
  const BriefPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/serviceImage.png',
          height: 248,
          width: 302,
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          'LAVA Services',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20,
        ),
        RousableText(textt: 'In LAVA APP You can get many '),
        RousableText(textt: 'car services,such as car washing '),
        RousableText(textt: 'with different types of washes, '),
        RousableText(textt: 'different companies and prices'),
        RousableText(
          textt: 'and buying cars and car accessories',
        ),
      ],
    );
  }
}

class BriefPageTwo extends StatelessWidget {
  const BriefPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/bookImage.png'),
        SizedBox(
          height: 50,
        ),
        Text(
          'Smart Booking System',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20,
        ),
        RousableText(
          textt: 'we  have  a smart booking  system.once',
        ),
        RousableText(textt: 'you fill out your booking information,'),
        RousableText(
          textt: 'the system suggest the appropriate',
        ),
        RousableText(
          textt: 'time to wash your car depending',
        ),
        RousableText(
          textt: 'on the weather in your place',
        ),
      ],
    );
  }
}
