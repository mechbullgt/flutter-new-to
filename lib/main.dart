import 'package:flutter/material.dart';

void main() => runApp(new Center(
      child: new MyApp(),
    ));

// Stateless Widgets won't do anything to change state.
// Root of your application
class MyApp extends StatelessWidget {
  // Build method
  @override
  Widget build(BuildContext context) {
    // MaterialApp is a built in Flutter Widget that gives
    // us a lot styling out of the box.
    // The most important arguments for MaterialApp are title and home
    return new MaterialApp(
      // Arguments that Material App is looking for.
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is setting the primary color of the app to Blue.
        primarySwatch: Colors.blue,
      ),
      // MyHomePage is just another arbitrary widget
      // named by you, the developer
      home: new MyHomePage(title: 'Mr. Counter'),
    );
  }
}

// This Widget is Stateful,
// because it's managing the state of the counter.
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  // It's being passed in title, you can see above.
  final String title; // => Flutter Home Demo Page
  // Stateful Widgets don't have build methods.
  // They have createState() methods.
  // Create State returns a class that extends Flutters State class.
  @override
  _MyHomePageState createState() => new _MyHomePageState();

  // Stateful Widgets are rarely more complicated than this.
}

// This is the state that MyHomePage created.
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // I've left in the comments from the sample app
  // because they say it better than I could:
  void _counterIncrementMethod() {
    // Built in Flutter Method.
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called,
    // for instance as done by the _incrementCounter method above.

    // Scaffold is another build in app that gives us a standard
    // mobile app layout. You'll most likely use this on every page
    // of your app
    return new Scaffold(
      // the bar accross the top of the app
      appBar: new AppBar(
        // State classes access properties on their
        // parent by calling widget.someProperty
        //  It's easier to think of StatefulWidgets and their corresponding
        // StateClasses as a single Widget.
        title: new Text(widget.title),
        backgroundColor: Colors.redAccent,
      ),
      body: new SplitCalculator(),
    );
  }
}

class SplitCalculator extends StatelessWidget {
    final cementSection = new Container(
    child: new FlatButton(
      child: new Text(
      "1",
      textScaleFactor: 2,
      style: TextStyle(fontStyle: FontStyle.italic),
    )
    ),
    height: 500,
  );
  final sandSection = new Container(
    child: new Text("2"),
  );
  final aggregateSection = new Container(
    child: new Text("3"),
  );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Row(
          children: <Widget>[cementSection, sandSection, aggregateSection],
        ),
      ),
    );
  }
}
