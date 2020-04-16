import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    @required this.headline,
    @required this.image,
  });

  final String headline;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.grey.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Container(
          height: 96,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        headline,
                        style: Theme.of(context).textTheme.headline,
                      ),
                    ),
                    Text(
                      "News Agency",
                      style: Theme.of(context).textTheme.body2,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(image: image, fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
