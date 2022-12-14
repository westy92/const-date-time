import 'package:const_date_time/const_date_time.dart';
import 'package:flutter/material.dart';

void main() {
  const title = 'Flutter Web Demo';
  final now = DateTime.now();
  runApp(MaterialApp(
    title: title,
    home: Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(now.difference(DateTime(0)).toString()),
            Text(now.difference(const ConstDateTime(0)).toString()),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    ),
  ));
}
