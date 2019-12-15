import 'package:flutter/material.dart';
import 'package:flutterindo/about.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Go to About"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return About();
            }));
          },
        ),
      ),
    );
  }
}