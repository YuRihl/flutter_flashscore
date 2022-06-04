import 'dart:developer';

import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../league_item.dart';
import '../models/league.dart';

class LeagueItems extends StatelessWidget {
  static const route = '/leagues';
  Map inputData = {};

  LeagueItems();

  @override
  Widget build(BuildContext context) {
    return FirestoreBuilder<LeagueQuerySnapshot>(
      ref: leagues,
      builder: (context, snapshot, child) {
        if (snapshot.hasError) return const Text('Something went wrong...');
        if (!snapshot.hasData) return const Text('Waiting for data...');

        LeagueQuerySnapshot querySnapshot = snapshot.requireData;

        return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 200,
            ),
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              League league = querySnapshot.docs[index].data;

              return TextButton(
                  child: Container(
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Column(children: [
                      Row(
                        children: [
                          Flag.fromString(
                            league.flag,
                            flagSize: FlagSize.size_4x3,
                            width: 50,
                            height: 20,
                          ),
                          Text(
                            league.country,
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          )
                        ],
                      ),
                      Text(
                        league.name,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ]),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, LeagueItem.route, arguments: {
                      'id': querySnapshot.docs[index].id,
                      'name': league.name
                    });
                  });
            });
      },
    );
  }
}
