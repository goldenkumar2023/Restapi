import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Api_colling.dart';

class UserDitials extends StatefulWidget {
  const UserDitials({Key? key}) : super(key: key);

  @override
  State<UserDitials> createState() => _UserDitialsState();
}

class _UserDitialsState extends State<UserDitials> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: UserSingle().getData(),
            builder: (context, snapshot){
             var data = snapshot.data;
             return ListView(
               children: [
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Center(
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading:  CircleAvatar(backgroundImage: NetworkImage("${data?.image}"),radius: 35,),
                              title:Text("${data?.name}"),
                              subtitle:SizedBox(

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${data?.email}"),
                                    Text("${data?.phone}")
                                  ],
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                )
               ],
             );
            },)
    );
  }
}





