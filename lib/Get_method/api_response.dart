import 'dart:convert';

import 'get_datamodel.dart';
import 'package:http/http.dart' as http;

class ApiResponse{
  var baseUrl="https://dummyjson.com";
   var endPoint="users";

   Future<GetDataModel?>getData()async{
     final response = await http.get(Uri.parse("$baseUrl/$endPoint"));
     try {
       if(response.statusCode == 200){
         var decodeResponse = jsonDecode(response.body);
        var modelUser = GetDataModel.fromJson(decodeResponse);
         return modelUser;
       }
       else{
         GetDataModel();
       }
     }
     catch(e) {
      GetDataModel();
     }
   }
}