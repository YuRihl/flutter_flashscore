import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_startup/pages/calendar.dart';
import 'package:flutter_startup/time_provider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import './pages/game_items.dart';
import './models/league.dart';

class LeagueItem extends StatefulWidget {
  static const route = '/league';

  LeagueItem();

  @override
  State<LeagueItem> createState() => _LeagueItemState();
}

class _LeagueItemState extends State<LeagueItem> {
  String currentDate = DateFormat('EEEE, dd of MMMM').format(DateTime.now());
  Map inputArguments = {};

  @override
  Widget build(BuildContext context) {
    TimeProvider date = Provider.of<TimeProvider>(context);
    inputArguments = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(200, 0, 100, 0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                inputArguments['name'],
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
              TextButton.icon(
                onPressed: () {
                  date.selectDate(context);
                  // setState(() {
                  //   selectDate(context);
                  // });
                  // Navigator.pushNamed(context, Calendar.route);
                },
                icon: const Icon(
                  Icons.calendar_month_rounded,
                  color: Colors.white,
                  size: 40,
                ),
                label: Text(''),
              )
            ],
          )),
      body: GameItems(inputArguments['id']),
    );
  }
}

      // body: FirestoreBuilder<LeagueDocumentSnapshot>(
      //   ref: leagues.doc(inputArguments['id']),
      //   builder: (context, snapshot, child) {
      //     if (snapshot.hasError) return const Text('Something went wrong...');
      //     if (!snapshot.hasData) return const Text('Waiting for data...');

      //     LeagueDocumentSnapshot documentSnapshot = snapshot.requireData;

      //     print(documentSnapshot.data!.country);

      //     return GameItems(inputArguments['id']);
      //   },
      // ),