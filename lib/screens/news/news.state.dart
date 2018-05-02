import 'package:flutter/material.dart';
import 'package:material_flutter/screens/news/news.dart';

class NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: buildNewsList()
    );
  }

  Widget buildNewsList() {
    ListView listview = new ListView.builder(
        itemBuilder: (context, i) {
          return buildCardView(i);
        },
        itemCount: 1
    );
    return listview;
  }

  Widget buildCardView(int i) {
    return new Card(
      color: Colors.white,
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Sample Card'),
            subtitle: const Text('Sample Subtitle'),
          ),
          new ButtonTheme.bar(
            child: new ButtonBar(
              children: <Widget>[
                new FlatButton(onPressed: (){}, child: const Text('Press me'))
              ],
            ),
          )
        ],
      ),
    );
  }
}