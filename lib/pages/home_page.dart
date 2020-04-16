import 'package:flutter/material.dart';
import 'package:newsapp/views/carousel/carousel_card_list.dart';
import 'package:newsapp/views/list/news_list.dart';
import 'package:newsapp/views/navigation_view.dart';
import 'package:newsapp/views/search_text_field.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(96),
        child: AppBar(
          flexibleSpace: NavigationView(),
        ),
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 24),
              SearchTextField(hintText: 'Search for headlines...'),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Latest News',
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontSize: 24),
                    ),
                    Text(
                      'Top stories at the moment',
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              CarouselCardList(),
              NewsList()
            ]),
          )
        ],
      ),
    );
  }
}
