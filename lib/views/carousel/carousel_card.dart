import 'dart:math';

import 'package:flutter/material.dart';

final cardDecoration = BoxDecoration(borderRadius: BorderRadius.circular(10));

class CarouselCard extends StatelessWidget {
  final ImageProvider image;
  final String headline;
  final String subHeadline;

  const CarouselCard({
    @required this.image,
    @required this.headline,
    @required this.subHeadline,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: cardDecoration.copyWith(
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade600, blurRadius: 2),
                ],
                image: DecorationImage(fit: BoxFit.cover, image: image),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    headline,
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    subHeadline,
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      decoration: cardDecoration,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      width: min(280, MediaQuery.of(context).size.width * 0.7),
    );
  }
}
