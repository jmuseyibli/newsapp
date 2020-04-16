import 'package:flutter/material.dart';
import 'package:newsapp/views/list/list_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 24),
      child: Column(
        children: <Widget>[
          ListItem(
            headline: 'News Headline',
            image: AssetImage('images/covid19.jpg'),
          ),
          ListItem(
            headline: 'News Headline',
            image: AssetImage('images/covid19.jpg'),
          ),
          ListItem(
            headline: 'News Headline',
            image: AssetImage('images/covid19.jpg'),
          ),
          ListItem(
            headline: 'News Headline',
            image: AssetImage('images/covid19.jpg'),
          ),
          ListItem(
            headline: 'News Headline',
            image: AssetImage('images/covid19.jpg'),
          ),
          ListItem(
            headline: 'News Headline',
            image: AssetImage('images/covid19.jpg'),
          ),
          ListItem(
            headline: 'News Headline',
            image: AssetImage('images/covid19.jpg'),
          ),
        ],
      ),
    );
  }
}
