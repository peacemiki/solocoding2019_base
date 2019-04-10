import 'package:flutter/material.dart';
import 'package:solocoding2019_base/domain/MemoGetUseCase.dart';
import 'package:solocoding2019_base/mock/MemoRepositoryMock.dart';

void main() => runApp(MyApp());

// This widget is the root of your application.
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState(new MemoGetUseCase(new MemoRepositoryMock()));
}

class MyAppState extends State<MyApp> {
  final MemoGetUseCase useCase;

  MyAppState(this.useCase);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'solocoding2019', // application name
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'), // app bar title
        ),
        body: Center(
          child: Text(useCase.getMemo("1").description), // center text
        ),
      ),
    );
  }
}
