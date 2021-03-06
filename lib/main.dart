import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: Colors.lightGreen)),
      title: _title,
      home: const MyHomePage(),
    );
  }
}
