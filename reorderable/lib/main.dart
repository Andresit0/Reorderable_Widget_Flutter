import 'package:flutter/material.dart';
import 'reorderableWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reorderable Widget',
      home: MyHomePage(title: 'Reorderable Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Widget> rows = [
    reorderableWidget(Text('data 1')),
    reorderableWidget(Text('data 2')),
    reorderableWidget(Text('data 3')),
    reorderableWidget(Text('data 4')),
    reorderableWidget(Text('data 5')),
    reorderableWidget(Text('data 6')),
    reorderableWidget(Text('data 7')),
    reorderableWidget(Text('data 8')),
    reorderableWidget(Text('data 9')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: showReorderableWidgetList(rows),
    );
  }
}
