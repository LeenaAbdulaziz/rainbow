import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:rainbow/SignupPage.dart';
import 'LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Layout App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 115,
              color: Colors.red,
            ),
            Container(

              width: double.infinity,
              height: 115,
              color: Colors.orange,


            ),
            Container(

              width: double.infinity,
              height: 115,
              color: Colors.yellow,


            ),
            Container(
              width: double.infinity,
              height: 115,
              color: Colors.green,
            ),

            Container(
              width: double.infinity,
              height: 115,
              color: Colors.blue,
            ),
            Container(
              width: double.infinity,
              height: 115,
              color: Colors.purple,
            ),


          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SignupPage();

                }),

              ); // This trailing comma makes auto-formatting nicer for build methods.

            },child: const Icon(Icons.logout),)

    );
  }
}








