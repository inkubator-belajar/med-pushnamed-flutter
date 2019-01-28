import 'package:flutter/material.dart';
import '../code/globalstate.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _name;
  GlobalState _store = GlobalState.instance;

  @override
  void initState() {
    _name = new TextEditingController();
    _store.set('name', '');
    _name.text = _store.get('name');
  }

  void onPressed() {
    _store.set('name', _name.text);
    Navigator.of(context).pushNamed('/second');
  }

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
              new Text('Welcome home'),
              new TextField(
                controller: _name,
                decoration: new InputDecoration(labelText: "Enter your name"),
              ),
              new RaisedButton(
                onPressed: onPressed,
                child: new Text("Press for name"),
              ),
              new RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil('/second', (Route<dynamic> route) => false);
                },
                child: new Text('Next'),
              )
            ],
          ),
        ),
      ),
    );
  }
}