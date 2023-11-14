import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Custommenu(imageAssets: "assets/persegi.webp", title: "persegi"),
          Custommenu(imageAssets: "assets/segitiga.jpg", title: "segitiga"),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            decoration: BoxDecoration(color: Colors.greenAccent),
            child: Column(
              children: [
                Image.asset(
                  "assets/segitiga.jpg",
                  height: 115,
                ),
                Text("Segitiga"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Custommenu extends StatelessWidget {
  const Custommenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      decoration: BoxDecoration(color: Colors.greenAccent),
      child: Column(
        children: [
          Image.asset(
            imageAssets,
            height: 130,
          ),
          Text(title),
        ],
      ),
    );
  }
}
