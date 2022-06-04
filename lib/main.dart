// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_startup/pages/calendar.dart';
import 'package:flutter_startup/pages/game_item.dart';
import 'package:flutter_startup/time_provider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'firebase_options.dart';

import 'league_item.dart';
import 'pages/game_items.dart';
import 'pages/home.dart';
import 'pages/league_items.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    child: MyApp(),
    providers: [
      ChangeNotifierProvider(create: ((context) => TimeProvider())),
    ],
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Flashscore',
      home: Home(),
      routes: {
        LeagueItems.route: (context) => LeagueItems(),
        LeagueItem.route: (context) => LeagueItem(),
        Calendar.route: (context) => Calendar(),
        GameItem.route: (context) => GameItem()
      },
    );
  }
}
