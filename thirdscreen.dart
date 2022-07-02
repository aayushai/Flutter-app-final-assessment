// ignore_for_file: prefer_const_constructors

import 'package:coding_challenge/training_completion.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class user_login extends StatefulWidget {
  const user_login({Key? key}) : super(key: key);

  @override
  State<user_login> createState() => _user_loginState();
}

class _user_loginState extends State<user_login> {
  String? _nameError = null;
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 40, color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      maxLength: 20, // maximum character it can hold
                      controller: _nameController,
                      decoration: InputDecoration(
                        errorText: _nameError,
                        labelText: "Student name",
                        labelStyle: TextStyle(fontSize: 15),
                        hintText: "Student name",
                        prefixIcon: Icon(Icons.person),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email ID",
                        
                        errorText: _nameError,
                        labelStyle: TextStyle(fontSize: 15,),
                        prefixIcon: Icon(Icons.alternate_email_rounded),
                        hintText: "Email ID",
                        border: UnderlineInputBorder(
                        ),
                      ),
                      // obscureText: _secureText, // for data not to be visible
                    ),
                    SizedBox(height: 50,),
                    Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 80.0, vertical: 8.0),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return training_completion();
                      }));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 24,),
                    )),
              ),
                  ],
                ))));
  }
}
