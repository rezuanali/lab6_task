import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const advance_ui());
}

class advance_ui extends StatelessWidget {
  const advance_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Advance UI-UX"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(124, 212, 432, 123),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network("https://i.quotev.com/klqyz2bgaaaa.jpg"),
            Image.network(
                "https://static.wikia.nocookie.net/naruto/images/2/27/Kakashi_Hatake.png/revision/latest/scale-to-width-down/300?cb=20230803224121"),
            CachedNetworkImage(
              imageUrl: "http://via.placeholder.com/350x150",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ],
        ),
      ),
    ));
  }
}