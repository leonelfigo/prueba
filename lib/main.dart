import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  int _currentIndex = 0;
  List<String> _imageList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQy9RycN80Cau051EDJChZk7uMoy-m3XCzyA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMIRXD_KIIawuONf1VPcIsRtNTahe3M0EjVg&s',
    'data:image/jpeg;base64,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',
  ];

  @override
  void initState() {
    super.initState();
    // Start carousel timer
    startTimer();
  }

  void startTimer() {
    Future.delayed(Duration(seconds: 7), () {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % _imageList.length;
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: goToPreviousImage,
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Image.network(
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
