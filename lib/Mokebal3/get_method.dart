
import 'dart:convert';

import 'package:http/http.dart'as http;

import '../mokebal2/user_model.dart';

class Userditials{

  var BaseUrl=" http://demo4428994.mockable.io/getmethod";
  var IndPoint=" ";

// Future <UsersModels> getuserdata() async{
//
//  final response=await http.get(Uri.parse("{$BaseUrl/$IndPoint}"));
// try{
//   if(response.statusCode==200){
//
//     var DecodeResponse=jsonDecode(response.body);
//     var User= UsersModels.fromJson(DecodeResponse);
//     return User;
//   }
// else{
//   return UsersModels();
//   }
// }
//  catch(e){
//   return UsersModels();
//  }
// }
}