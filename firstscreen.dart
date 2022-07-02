import 'package:coding_challenge/user_login.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class getStarted extends StatelessWidget {
  const getStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("GET STARTED",style: TextStyle(fontSize: 14),)),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    "TRAINING",
                    style: TextStyle(fontSize: 58, color: Colors.purple),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Image(
                      image: NetworkImage(
                          "https://toppng.com/uploads/preview/training-png-11553373957geiyxwlzxd.png")),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 100.0, vertical: 8.0),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return user_login();
                      }));
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 24,),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
