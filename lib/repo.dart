import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'const.dart';

Future<void> getTokenRepo() async {
const String uri="https://todoist.com/oauth/access_token";

var reponse=await http.post(Uri.parse(uri),body: {
  "client_id":clientId,
  "client_secret":clientSecred,
  "code":code,
});

if(reponse.statusCode==200){
 final data=jsonDecode(reponse.body);
 print(data["access_token"]);
final SharedPreferences prefs = await SharedPreferences.getInstance();
print(reponse.body);
prefs.setString("token", data["access_token"]);
}else{
  EasyLoading.showError("Error");
}

}