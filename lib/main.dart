import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
     //  '/nutrition': (BuildContext context) => new NutritionDrawer()
      },
      home: new NutritionPage(),
    );
  }
}

class MyHomeDrawer extends StatefulWidget {
  @override
  _MyHomeDrawerState createState() => _MyHomeDrawerState();
}

class _MyHomeDrawerState extends State<MyHomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NutritionPage(),
      appBar: AppBar(
       // backgroundColor: Colors.white,
       //leading:
        title: Text('\t\t\t           Nutrition',
            style: TextStyle(color: Colors.black)),
actions: <Widget>[
  IconButton(
    icon: Icon(
      Icons.add,
      color: Colors.white  ,
    ), onPressed: () {  },
  ),
]
      ),
      body: Container(
        padding: EdgeInsets.only(left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('\n'),
            ClipOval(
              child: Image.asset(
                'assets/my photo.jpeg',
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Text('\nAvneet Kaur',
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            Text('avneet.sidak@gmail.com',
                style: TextStyle(color: Colors.black38, fontSize: 14)),
            RichText(
                text: TextSpan(children: [
              TextSpan(text: '\n\n\n'),
              WidgetSpan(
                  child: Icon(Icons.home, color: Colors.black26, size: 43)),
              TextSpan(
                  text: '  Home',
                  style: TextStyle(color: Colors.black26, fontSize: 27))
            ])),
            RichText(
                text: TextSpan(children: [
              TextSpan(text: '\n'),
              WidgetSpan(
                  child: Icon(Icons.directions_run,
                      color: Colors.black26, size: 43)),
              TextSpan(
                  text: '  Activity',
                  style: TextStyle(color: Colors.black26, fontSize: 27))
            ])),
            RichText(
                text: TextSpan(children: [
              TextSpan(text: '\n'),
              WidgetSpan(
                  child:
                      Icon(Icons.food_bank, color: Colors.black26, size: 43)),
              TextSpan(
                  text: '  Nutrition',
                  //recognizer: new TapGestureRecognizer()
                    //..onTap = () {
                     // Navigator.of(context).pushNamed('/nutrition');
                    //},
                  style: TextStyle(color: Colors.black26, fontSize: 27))
            ])),
            RichText(
                text: TextSpan(children: [
              TextSpan(text: '\n'),
              WidgetSpan(
                  child:
                      Icon(Icons.nightlife, color: Colors.black26, size: 43)),
              TextSpan(
                  text: '   Sleep  ',
                  style: TextStyle(color: Colors.black26, fontSize: 27))
            ])),
            RichText(
                text: TextSpan(children: [
              TextSpan(text: '\n'),
              WidgetSpan(
                  child: Icon(Icons.settings, color: Colors.black26, size: 43)),
              TextSpan(
                  text: ' Settings',
                  style: TextStyle(color: Colors.black26, fontSize: 27))
            ])),
            Text('\n\n\n\nLogout ',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black26))
          ],
        ),
      ),

    );
  }
}

class NutritionPage extends StatefulWidget {
  @override
  _NutritionPageState createState() => _NutritionPageState();
}

class _NutritionPageState extends State<NutritionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyHomeDrawer(),
        appBar: AppBar(
          // backgroundColor: Colors.white,
          //leading:
            title: Text('\t\t\t           Nutrition',
                style: TextStyle(color: Colors.black)),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white  ,
                ), onPressed: () {  },
              ),
            ]
        ),
      body: Container(
          child: Column(children: <Widget>[

        Row(children: <Widget>[
          Text('\t\t\tTotal calories',
              style: TextStyle(fontSize: 20, color: Colors.black54)),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '\n\n\t\t\t\t                               Today',
                style: TextStyle(fontSize: 20, color: Colors.black54)),
            WidgetSpan(
                child: Icon(Icons.arrow_drop_down, color: Colors.black38)),
          ])),
        ]),
        Container(child: Text('\n')),
        Stack(children: <Widget>[
          Container(
            height: 230,
            width: 230,
            padding: EdgeInsets.all(7),
            child: Container(
              height: 200,
              width: 200,
              child: Container(
                child: Column(
                  children: <Widget>[
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: '\n\n\n2000',
                          style:
                              TextStyle(fontSize: 28, color: Colors.black54)),
                      TextSpan(
                          text: '  kcal',
                          style: TextStyle(fontSize: 17, color: Colors.black45))
                    ])),
                    Text('\n70% of goal',
                        style: TextStyle(color: Colors.black38, fontSize: 17))
                  ],
                ),
                height: 180,
                width: 180,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12, width: 8),
                  shape: BoxShape.circle),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.lightGreen]),
                border: Border.all(color: Colors.black12, width: 8),
                shape: BoxShape.circle),
          ),
        ]),
        Container(child: Text('\n\n\t')),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(children: <Widget>[
                  Text('\nProteins',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black38)),
                  Text('\n70% of goal\n\n',
                      style: TextStyle(color: Colors.black26, fontSize: 16)),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 5,
                        width: 120,
                        decoration: BoxDecoration(color: Colors.black12),
                      ),
                      Container(
                        height: 5,
                        width: 90,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.red, Colors.orangeAccent])),
                      )
                    ],
                  )
                ])),
            Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(children: <Widget>[
                  Text('\nFats',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black38)),
                  Text('\n30% of goal\n\n',
                      style: TextStyle(color: Colors.black26, fontSize: 16)),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 5,
                        width: 120,
                        decoration: BoxDecoration(color: Colors.black12),
                      ),
                      Container(
                        height: 5,
                        width: 45,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Colors.green[600],
                          Colors.lightGreenAccent
                        ])),
                      )
                    ],
                  )
                ])),
          ],
        ),
        Container(child: Text('\n')),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(children: <Widget>[
                  Text('\nCarbohydrates',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black38)),
                  Text('\n55% of goal\n\n',
                      style: TextStyle(color: Colors.black26, fontSize: 16)),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 5,
                        width: 120,
                        decoration: BoxDecoration(color: Colors.black12),
                      ),
                      Container(
                        height: 5,
                        width: 65,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Colors.deepPurple,
                          Colors.purpleAccent
                        ])),
                      )
                    ],
                  )
                ])),
            Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(children: <Widget>[
                  Text('\nWater',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black38)),
                  Text('\n60% of goal\n\n',
                      style: TextStyle(color: Colors.black26, fontSize: 16)),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 5,
                        width: 120,
                        decoration: BoxDecoration(color: Colors.black12),
                      ),
                      Container(
                        height: 5,
                        width: 72,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Colors.blueAccent[700],
                          Colors.lightBlue
                        ])),
                      )
                    ],
                  )
                ])),
          ],
        ),
      ])),
    );
  }
}
