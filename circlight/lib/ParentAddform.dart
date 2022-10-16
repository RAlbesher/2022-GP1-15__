import 'package:flutter/material.dart';
//import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFFffffff),
        body: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formKey, //key for form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.04),
                Text(
                  "إنشاء حساب ولي الامر ",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20, color: Color(0xFF363f93)),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  //to take text from user input
                  decoration: InputDecoration(labelText: "اسم ولي الامر"),
                  validator: (value) {
                    if (value!.isEmpty)
                      return "Please Enter a the empty fields ";
                    else {
                      return null;
                    }
                  },
                )
              ],
            ),
          ),
        ));
  }
}
