import 'package:flutter/material.dart';
import 'package:moyeen_express/screens/signing.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              // SharedPreferences preferences = await SharedPreferences.getInstance();
              // bool alreadyVisited = preferences.getBool("alreadyVisited") ?? false;

              SharedPreferences pref = await SharedPreferences.getInstance();
              pref.setString('email', '');
              print('hey');
              Get.off(Signing());
            },
            child: Text('LOGOUT'),
          )
        ),
      ),
    );
  }
}
