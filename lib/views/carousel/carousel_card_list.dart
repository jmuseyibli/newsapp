import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/views/carousel/carousel_card.dart';

class CarouselCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double pageWidth = 300 / MediaQuery.of(context).size.width;
    return CarouselSlider(
      height: 220,
      viewportFraction: pageWidth,
      items: <Widget>[
        CarouselCard(
          image: AssetImage('images/covid19.jpg'),
          headline: 'Headline',
          subHeadline: 'Sub Headline',
        ),
        CarouselCard(
          image: AssetImage('images/covid19.jpg'),
          headline: 'Headline',
          subHeadline: 'Sub Headline',
        ),
        CarouselCard(
          image: AssetImage('images/covid19.jpg'),
          headline: 'Headline',
          subHeadline: 'Sub Headline',
        )
      ],
    );
  }
}
