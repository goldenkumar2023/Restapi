import 'dart:convert';
import 'package:all_apicoling/mokebal2/user_model.dart';
import 'package:http/http.dart' as http;

class UserSingle {
  var BaseUrl = "http://demo4428994.mockable.io/";
  var IndPoint = "golden";

 Future<UsersModels> getData() async{
   final response = await http.get(Uri.parse("$BaseUrl/$IndPoint"));

   try {
     if(response.statusCode == 200){
       var decodedResponse = jsonDecode(response.body);
       var users = UsersModels.fromJson(decodedResponse);
       return users;
     }
     else{
       return UsersModels();
     }
   }
   catch(e){
     return UsersModels();
   }
 }
}
