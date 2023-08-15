import 'package:flutter/material.dart';
import 'package:week2/news/news_model.dart';

class NewsViewPage extends StatelessWidget {
  final String title, author;
  final NewsModel model;
  final int index;
  const NewsViewPage({
    super.key,
    required this.author,
    required this.title,
    required this.model,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 195, 207, 224),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,
            ),
            Text(
              author,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
            Image.network(model.articles![1].urlToImage.toString()),
          ]),
        ),
      ),
    );
  }
}
