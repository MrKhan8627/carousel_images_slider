
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example of Carousel Images Slider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Carousel Images Slider'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final urlImages = [
    // 'https://www.pexels.com/photo/silver-and-black-imac-s-326501/'
    // 'https://www.pexels.com/photo/woman-holding-tablet-computer-3082341/'
    // 'https://www.pexels.com/photo/photo-of-woman-teaching-his-son-while-smiling-4145355/'
    // 'https://www.pexels.com/photo/sky-earth-space-working-2156/'
    // 'https://www.pexels.com/photo/wood-industry-tools-knife-4312861/'

    'assets/images/DeepLearning.png'
        'assets/images/DeepWorkPlan.png'
        'assets/images/ImageProcessing.png'
        'assets/images/MachineLearning.png'
        'assets/images/python.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: CarouselSlider.builder(
            itemCount: urlImages.length,
            options: CarouselOptions(height: 500,
            autoPlay: true,
            enlargeCenterPage: true),
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];

              return buildImages(urlImage, index);
            },
          ),
        ));
  }

  Widget buildImages(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: const BoxDecoration(
          color: Colors.white38,
        ),
        child:Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
}
