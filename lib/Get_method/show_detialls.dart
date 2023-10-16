import 'package:all_apicoling/Get_method/api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowData extends StatefulWidget {
  const ShowData({Key? key}) : super(key: key);

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: ApiResponse().getData(),
          builder: (context, snapshot) {
            var resData = snapshot.data;
            return ListView.builder(
              itemCount: resData?.users?.length,
              itemBuilder: (context, index) {
                return Text("${resData?.users?[index].firstName}");

              },);
          },)
    );
  }
}

