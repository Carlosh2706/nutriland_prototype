import 'package:flutter/material.dart';

class OnboardModel {
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

  OnboardModel({
    required this.img,
    required this.text,
    required this.desc,
    required this.bg,
    required this.button,
  });
}

List<OnboardModel> screens = <OnboardModel>[
  OnboardModel(
    img: 'assets/onboard1.jpg',
    text: "Healthy Recipes",
    desc: "Find trusted recipes for eating healthy: start the day with a wholesome breakfast, cut the carbs or calories, find the perfect main dish for your special diet.",
    bg: Colors.white,
    button: const Color(0XFF4756DF),
  ),
  OnboardModel(
    img: 'assets/onboard2.jpg',
    text: "Easy to follow",
    desc: "Clear steps for anyone to follow and enjoy the experience of trying new recipes!",
    bg: Colors.white,
    button: const Color(0XFF4756DF),
  ),
  OnboardModel(
    img: 'assets/onboard3.jpg',
    text: "Measurements conversions",
    desc: "We have a special calculator to help you convert cooking measurements and make your experience easier!",
    bg: Colors.white,
    button: const Color(0XFF4756DF),
  ),
  OnboardModel(
    img: 'assets/onboard4.jpg',
    text: "Enjoy with everyone",
    desc: "With our automatically calculated ingredients, you can adjust the amount of servings you need so you can prepare any recipe for any amount of people!",
    bg: Colors.white,
    button: const Color(0XFF4756DF),
  )
];