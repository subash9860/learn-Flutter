import "package:flutter/material.dart";

void main() {
  runApp(
    new MaterialApp(
      home: new MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value = "Nothig yet to add";

  void _onPressed() => setState(() => _value = new DateTime.now().toString());
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('ToolTips')),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: [
              new Text(_value),
              new IconButton(
                icon: new Icon(Icons.timer),
                onPressed: _onPressed,
                tooltip: 'Click me',
              )
            ],
          ),
        ),
      ),
    );
  }
}
