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
  /* 단일 배열
  final List<String> fruits = [
    '사과', '오렌지', '바나나', '포도', '딸기'
  ];
  */

  //다중 배열
  final List<Map<String, String>> animals  = [
    {'name' : '강아지', 'sound' : '멍멍'},
    {'name' : '고양이', 'sound' : '야옹'},
    {'name' : '닭', 'sound' : '꼬끼오'},
    {'name' : '소', 'sound' : '음메'},
    {'name' : '사람', 'sound' : '야!!!!'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('실습'),
        ),
        body : ListView.builder(
          itemCount : animals.length,
          itemBuilder : (context, index){
            return ListTile(
                title : Text(animals[index]['name']!),
                subtitle : Text('울음소리 : ${animals[index]['sound']}')
            );
          },
        )
    );
  }
}