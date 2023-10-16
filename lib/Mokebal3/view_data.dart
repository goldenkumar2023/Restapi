import 'dart:convert';

import 'package:all_apicoling/Mokebal3/data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../mokebal2/user_model.dart';

class View_data extends StatefulWidget {
  const View_data({Key? key}) : super(key: key);

  @override
  State<View_data> createState() => _View_dataState();
}

class _View_dataState extends State<View_data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          var data = snapshot.data;
        return
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("${data?.image}"),
              ),
              subtitle: Text("${data?.number}"),
              title: Text("${data?.name}"),
            );
      },),
    );
  }

  Future<ModelUsers> getData() async{
    final response = await http.get(Uri.parse("http://demo4428994.mockable.io/getmethod"));
    try {
      if(response.statusCode == 200){
        var decodeResponse = jsonDecode(response.body);
        var models = ModelUsers.fromJson(decodeResponse);
        return models;
      }
      else{
        return ModelUsers();
      }

    }catch(e) {
  return ModelUsers();
    }
  }
}

