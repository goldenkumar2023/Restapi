import 'package:flutter/material.dart';

import 'Apicoling/home_page.dart';
import 'Get_method/show_detialls.dart';
import 'Mokebal3/view_data.dart';
import 'View/user_ditialls_screen.dart';
import 'mokebal2/user_ditials_screen.dart';
import 'mokebale/sow_data.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Flutter Demo',
      home: ShowData(),
    );
  }

/// MVC model view controller
/// model view controller
/// MVP model view presenter
/// MVVM model view viewmodel

}