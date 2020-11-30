import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new GridView.count(
        crossAxisCount: 3,// 一行三列
        padding: EdgeInsets.all(10.0),
        //每列的垂直间距
        crossAxisSpacing: 5.0,
        //每行的水平间距
        mainAxisSpacing: 5.0,
        children: <Widget>[
          new Container(
            color: Colors.amber,
            child: new Text('x'),
          ),
          new Container(
            color: Colors.red,
            child: new Text('x1'),
          ),
          new Container(
            color: Colors.deepOrange,
            child: new Text('x2'),
          ),
          new Container(
            color: Colors.greenAccent,
            child: new Text('x3'),
          ),
          new Container(
            color: Colors.teal,
            child: new Text('x4'),
          ),
          new Container(
            color: Colors.indigo,
            child: new Text('x5'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
