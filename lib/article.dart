import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  Article({Key key, this.fill, this.title, this.subtitle, this.body})
      : super(key: key);

  final Color fill;
  final String title;
  final String subtitle;
  final String body;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 4.0),
      Container(
        color: fill,
        height: 200,
        width: 300,
      ),
      SizedBox(height: 10.0),
      Text(
        title,
        style: Theme.of(context).textTheme.headline5,
      ),
      SizedBox(height: 2.0),
      Text(
        subtitle,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      SizedBox(height: 15.0),
      Text(body),
    ]);
  }
}
