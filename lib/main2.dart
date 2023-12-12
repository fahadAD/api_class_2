import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
 class Fahad extends StatefulWidget {
  const Fahad({super.key});

  @override
  State<Fahad> createState() => _FahadState();
}

class _FahadState extends State<Fahad> {
   String tokean_s="";
 void getData() async {
     final SharedPreferences prefs = await SharedPreferences.getInstance();
     setState(() {
       tokean_s=prefs.getString("token")??"";
     });
   }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
    body: Center(child: Text( "Token = ${tokean_s}")),
    );
  }
}