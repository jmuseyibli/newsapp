import 'package:flutter/material.dart';
import 'package:newsapp/views/circle_image_button.dart';

class NavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Welcome back, Javid!',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Get updated with NewsApp',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
              CirlceImageButton(
                image: AssetImage('images/covid19.jpg'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
