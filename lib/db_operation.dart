import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_flutter_app1/constant.dart';
import 'package:http/http.dart' as http;
//import 'package:shared_preferences/shared_preferences.dart';


class DB_OP {
 Future login(
      {required String username,
      required String password,}) async {
    try {
      var urls = Uri.parse('${url}login.php');
     // SharedPreferences pref = await SharedPreferences.getInstance();
      var map = <String, dynamic>{};
      map['user'] = username;
      map['password'] = password;

      var data = await http.post(urls, body: map);
      print(data.statusCode);
      print(data.body);
      if (data.statusCode == 200) {
        print("Response JSON=>${data.body}");
        /*var jsondata = jsonDecode(data.body);
        final List users = jsondata;
        return users;*/
      }
      else{
        print('error');
      }
    } catch (e) {
      print(e.toString());
    }
    // throw Exception();
  }
  }