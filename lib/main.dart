import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  Color color;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: color,
        appBar: new AppBar(
          title: new Text('Test App'),
          centerTitle: true,
        ),
        body: new Container(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              TextCenterWidget(),
              Container(
                  height: 1000.0,
                  child: GestureDetector(onTap: () {
                    setState(() {
                      randomColorGenerator();
                    });
                  }))
            ],
          ),
        ));
  }

  void randomColorGenerator() {
    Random random = new Random();
    int rand1 = random.nextInt(400);
    int rand2 = random.nextInt(400);
    int rand3 = random.nextInt(400);
    int rand4 = random.nextInt(400);
    color = Color.fromARGB(rand1, rand2, rand3, rand4);
  }
}

class TextCenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: new Text("Hey there",
            style: TextStyle(fontSize: 25.0)));
  }
}
