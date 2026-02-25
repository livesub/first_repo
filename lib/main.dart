import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  
  final List<String> fruits = [
    '사과', '오렌지', '바나나', '포도', '딸기'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('실습'),
      ),
      body : ListView.builder(
        itemCount : fruits.length,
        itemBuilder : (context, index){
          return ListTile(
            title : Text(fruits[index]),
          );
        },
      )
    );
  }
}