import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Model.dart';
import 'dart:async';
import 'View.dart';
import 'package:rxdart/subjects.dart';
import 'package:rpgfinal/ModelProvider.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ModelProvider(
      child: MaterialApp(
      theme: ThemeData.dark(),
      home: MyHomePage(),
      ),
    );
  }
}


