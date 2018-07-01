import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Model.dart';
import 'dart:async';
import 'View.dart';
import 'package:rxdart/subjects.dart';
import 'package:rpgfinal/ModelProvider.dart';

class MyHomePage extends StatelessWidget {


  final DocumentReference firebaseData = Firestore.instance.document("baby/dana");



  @override
  Widget build(BuildContext context) {
    final model = ModelProvider.of(context);

    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        drawer: new Drawer(
          child: new Column(
            children: <Widget>[
              new Expanded(
                child: new Card(
                  child: new Center(
                    child: new Text('Muscle'),
                  ),
                ),
              ),
              new Expanded(
                child: new Card(
                  child: new Center(
                    child: new Text('Fitness'),
                  ),
                ),
              ),
              new Expanded(
                child: new Card(
                  child: new Center(
                    child: new Text('Vitality'),
                  ),
                ),
              ),
              new Expanded(
                child: new Card(
                  child: new Center(
                    child: new Text('Agility'),
                  ),
                ),
              ),
              new Expanded(
                child: new Card(
                  child: new Center(
                    child: new Text('Dexterity'),
                  ),
                ),
              ),
              new Expanded(
                child: new Card(
                  child: new Center(
                    child: new Text('Reflexes'),
                  ),
                ),
              ),
              new Expanded(
                child: new Card(
                  child: new Center(
                    child: new Text('Willpower'),
                  ),
                ),
              ),
              new Expanded(
                child: new Card(
                  child: new Center(
                    child: new Text('Intelligence'),
                  ),
                ),
              ),
              new Expanded(
                child: new Card(
                  child: new Center(
                    child: new Text('Memory'),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: new AppBar(
          bottom: new TabBar(
            tabs: [
              new Tab(text: 'Dashboard'),
              new Tab(text: 'Inventory'),
              new Tab(text: 'Experience'),
            ],
          ),
          title: new Text('Broof'),
          centerTitle: true,
        ),
        body: new TabBarView(
          children: [
            new Container(
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new Column(
                      children: <Widget>[
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('HP'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('MW Threshold'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Armor Stack'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Resists'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Grapple Mods'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Size Mod'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Expanded(
                    child: new Column(
                      children: <Widget>[
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Stamina'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Restore Limit'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Exertion Limit'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Reaction Window'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Initiative'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Breathe'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Expanded(
                    child: new Column(
                      children: <Widget>[
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Magic Info'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Various Actions'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Like Dash'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('And Defensive Reaction'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Or Maybe a Seperate'),
                            ),
                          ),
                        ),
                        new Expanded(
                          child: new Card(
                            child: new Center(
                              child: new Text('Row for Buttons'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Text(firebaseData.documentID),
            new StreamBuilder(
                stream: Firestore.instance.collection('baby').snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                  if (!snapshot.hasData){
                    return CircularProgressIndicator();}
                    return new Text(snapshot.data.documents[0]['name']);

              },
            ),
          ],
        ),
      ),
    );
  }
}