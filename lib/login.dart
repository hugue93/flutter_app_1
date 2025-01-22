import 'package:flutter/material.dart';
import 'db_operation.dart';


class login_page extends StatefulWidget{
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  DB_OP db_op=DB_OP();
  TextEditingController fname=  TextEditingController();
TextEditingController lname=  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'),),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: fname,
            ),
            TextField(
              controller: lname,
            ),
            ElevatedButton(onPressed: ()=>db_op.login(username: fname.text, password: lname.text), child:Text('login'))
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}