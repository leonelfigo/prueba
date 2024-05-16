import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('siuu'),
        ),
        body: Column(
          children: [
            Expanded(
              child: CarouselPage(),
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  int _currentIndex = 0;
  List<String> _imageList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQy9RycN80Cau051EDJChZk7uMoy-m3XCzyA&s',
    '',
  ];

  @override
  void initState() {
    super.initState();
    // Start carousel timer
    startTimer();
  }

  void startTimer() {
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % _imageList.length;
        log(_currentIndex);
          startTimer();
        });
      }
    });
  }

  void goToPreviousImage() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _imageList.length;
    });
  }

  void goToNextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _imageList.length;
    });
  }

  


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: goToPreviousImage,
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds:800),
              child: Image.network(
          // height: double.infinity,
          //      width: double.infinity,
                _imageList[_currentIndex],
                key: Key(_imageList[_currentIndex]),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: goToNextImage,
            ),
          ],
        ),
      ),
    );
  }
}
