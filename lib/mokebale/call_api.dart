
import 'dart:convert';

import 'model.dart';
import 'package:http/http.dart'as http;

class UsersSingle{

  var baseUrl="https://demo6243660.mockable.io";
  var endPoint = "users";

  Future<UserModel> getUsersApi() async{
    final response = await http.get(Uri.parse("$baseUrl/$endPoint"));

    try{

      if(response.statusCode==200){
        var decodeData = jsonDecode(response.body);
        var userModel = UserModel.fromJson(decodeData);
        return userModel;
      }

      else{
        return UserModel();
      }

    } catch (error) {
      return UserModel();
    }
  }
}