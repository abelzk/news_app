import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}
// @override
// _CardsState createState() => _CardsState();

class _CardsState extends State<Cards> {
  int activeIndex = 0;

  final urlimages = [
    'lib/icons/test.jpg',
    'lib/icons/test.jpg',
    'lib/icons/test.jpg',
    'lib/icons/test.jpg',
    'lib/icons/test.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: urlimages.length,
              itemBuilder: (context, index, realIndex) {
                final urlimage = urlimages[index];
                return buildImage(urlimage, index);
              },
              options: CarouselOptions(height: 300),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildImage(String urlimages, int index) => Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        urlimages,
        fit: BoxFit.cover,
      ),
    ));
