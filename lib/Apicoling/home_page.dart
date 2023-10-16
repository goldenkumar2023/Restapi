import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final url = "https://jsonplaceholder.typicode.com/posts";
  var postjson = [];

  void fatchpost() async {
    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;

      setState(() {
        postjson = jsonData;
      });
    } catch (error) {
      print("Error: $error");
    }
  }

  @override
  void initState() {
    super.initState();
    fatchpost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: postjson.length,
          itemBuilder: (context, i) {
            final post = postjson[i];
            return Column(
              children: [
                Text("Title: ${post["title"]}"),
                Text("Body: ${post["body"]}"),
                Divider(), // Add a divider between posts
              ],
            );
          },
        ),
      ),
    );
  }
}