import 'package:flutter/material.dart';


class Second extends StatefulWidget {
  @override
  _SecondState createState() => new _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Welcome second home'),
              new RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/third');
                }, child: new Text('Next'),),
              new RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                }, 
                child: new Text('Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}