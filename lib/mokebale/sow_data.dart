import 'dart:convert';
import 'package:all_apicoling/mokebale/call_api.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class Sowdata extends StatefulWidget {
  const Sowdata({Key? key}) : super(key: key);

  @override
  State<Sowdata> createState() => SowdataState();
}

class SowdataState extends State<Sowdata> {
  var getClassData = UsersSingle();

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: FutureBuilder(future: getClassData.getUsersApi(),
        builder: (context, snapshot) {
        var data = snapshot.data;
        return ListView(
          children: [
            CircleAvatar(
              radius: 50,
              child: Image.network("${data?.url}"),
            ),
            Text("${data?.id}"),
            Text("${data?.name}"),
            Text("${data?.email}"),
          ],
        );

      },)
    );
  }
}
