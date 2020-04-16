import 'package:flutter/material.dart';

class CirlceImageButton extends StatelessWidget {
  const CirlceImageButton({this.image});

  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 3),
        image: DecorationImage(image: image, fit: BoxFit.cover),
      ),
    );
  }
}
