import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Calculator'),
      debugShowCheckedModeBanner: false,
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
  Widget buildButton() {
    return new Expanded(
      child: new MaterialButton(
        child: new Text("1"),
        onPressed: () => {},
        color: Colors.blueGrey,
        textColor: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
          child: new Column(
        children: <Widget>[
          new Text("0"),
          new Expanded(
            child: new Divider(),
          ),
          new Row(
            children: [
              buildButton(),
              buildButton(),
              buildButton(),
              buildButton(),
            ],
          )
        ],
      )),
    );
  }
}
