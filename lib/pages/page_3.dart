import 'package:flutter/material.dart';
import 'package:usingnavigationdrawer/pages/page_1.dart';

class PageThree extends StatelessWidget {
  String? msg;
  // PageThree({this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("sdlfkjslfjlskjf")),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (ctx) => PageOne()));
              //Navigator.pushNamed(context, "/page_one");
              Navigator.of(context).pushNamed("/page_one");
            },
            child: Text("I am malo kottar gorer kotta"),
          ),
        ),
      ),
    );
  }
}
