// ignore_for_file: unnecessary_import, avoid_print, unnecessary_brace_in_string_interps

import 'package:course_app/pages/welcome/bloc/welcome_blocs.dart';
import 'package:course_app/pages/welcome/bloc/welcome_states.dart';
import 'package:course_app/widgets/page_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.only(top: 34.h),
              width: 375.w,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView(
                    onPageChanged: (index) {
                      print("index value is ${index}");
                    },
                    children: [
                      page(
                          1,
                          context,
                          "next",
                          "First  see Learning",
                          "Foret about a for of paper all knowldget in on learning",
                          "image path"),
                      page(
                          2,
                          context,
                          "next",
                          "Connect With Everyone",
                          "Always keep in touch with your tutor & friend.Let's get connect",
                          "image path"),
                      page(
                          3,
                          context,
                          "get started",
                          "Always Fascinated Learning",
                          "Anywhere, anytime. The Time is at your discretion so study when",
                          "image path"),
                    ],
                  ),
                  Positioned(
                    bottom: 100.h,
                    child: DotsIndicator(
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                        color: Colors.grey,
                        activeColor: Colors.blue,
                        size: const Size.square(8.0),
                        activeSize: const Size(10.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
