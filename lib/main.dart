import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            '$_count',
            key: Key('counterText'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          key: Key('incrementButton'),
          child: Icon(Icons.add),
          onPressed: () => setState(() {
            _count++;
          }),
        ),
      ),
    );
  }
}
