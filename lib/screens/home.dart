import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text("Virgin"),
            Text(
              "News",
              style: TextStyle(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
      body: Container(),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});


final imageUrl, categoryName;

CategoryTitle({this.imageUrl, this.categoryName})
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.network(imageUrl, width: 120, height: 60,)
        ],
      ),
    );
  }
}
