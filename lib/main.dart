import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _sliderImage = [
    'images/img01.jpg',
    'images/img02.png',
    'images/img03.jpg',
    'images/img04.jpg',
    'images/img05.jpg',
    'images/img06.jpg',
    'images/img07.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: CarouselSlider(
            options: CarouselOptions(autoPlay: true, height: 500),
            items: _sliderImage.map((sliderimage) {
              return Builder(builder: (context) {
                return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(sliderimage));
              });
            }).toList(),
          ),
        ),
      ),
    );
  }
}
