import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _getApiList() {
    http.get(
      Uri.https("/api.themoviedb.org", "/4/list/1"),
      headers: {
        'Authorization': 'Bearer <<access_token>>',
        'Content-Type': 'application/json;charset=utf-8'
      },
    ).then(
      (Response value) => print(value.body),
    );
  }

  @override
  void initState() {
    super.initState();
    _getApiList();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text('Hello word'),
        ),
      ),
    );
  }
}
