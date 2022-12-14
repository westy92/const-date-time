import 'package:const_date_time/const_date_time.dart';
import 'package:flutter/material.dart';

void main() {
  const title = 'Flutter Web Demo';
  final duration = DateTime.now().difference(const ConstDateTime(0));

  runApp(MaterialApp(
    title: title,
    home: Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Text(duration.toString()),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    ),
  ));
}
