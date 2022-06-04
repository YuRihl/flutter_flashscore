import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_startup/pages/game_item.dart';
import 'package:flutter_startup/time_provider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../models/game.dart';

class GameItems extends StatefulWidget {
  final String leagueId;

  GameItems(this.leagueId);

  @override
  State<GameItems> createState() => _GameItemsState();
}

class _GameItemsState extends State<GameItems> {
  @override
  Widget build(BuildContext context) {
    TimeProvider date = Provider.of<TimeProvider>(context);
    late DateTime start =
        DateTime(date.getDate().year, date.getDate().month, date.getDate().day);
    late DateTime end = DateTime(date.getDate().year, date.getDate().month,
        date.getDate().day, 23, 59, 59);
    return FirestoreBuilder<GameQuerySnapshot>(
      ref: widget.leagueId == ''
          ? games
              .whereTime(isGreaterThanOrEqualTo: start)
              .whereTime(isLessThanOrEqualTo: end)
          : games
              .whereLeagueId(isEqualTo: widget.leagueId)
              .whereTime(isGreaterThanOrEqualTo: start)
              .whereTime(isLessThanOrEqualTo: end),
      builder: (context, AsyncSnapshot<GameQuerySnapshot> snapshot, child) {
        if (snapshot.hasError) return const Text('Something went wrong...');
        if (!snapshot.hasData) return const Text('Waiting for data...');

        GameQuerySnapshot querySnapshot = snapshot.requireData;

        return ListView.builder(
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              Game game = querySnapshot.docs[index].data;

              return TextButton(
                child: Container(
                  color: Colors.black54,
                  padding: const EdgeInsets.fromLTRB(20, 15, 30, 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 200,
                                child: Text(
                                  game.home,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                      color: Colors.blue, fontSize: 24),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  game.away,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                      color: Colors.red, fontSize: 24),
                                ),
                              )
                            ],
                          ),
                          game.time.isAfter(DateTime.now())
                              ? Text(
                                  DateFormat.Hm().format(game.time),
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                )
                              : Column(
                                  children: [
                                    Text(
                                      game.result['home'].toString(),
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 28),
                                    ),
                                    Text(
                                      game.result['away'].toString(),
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 28),
                                    )
                                  ],
                                ),
                        ],
                      ),
                      Text(
                        querySnapshot.docs.length.toString(),
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                ),
                onPressed: game.time.isAfter(DateTime.now())
                    ? null
                    : () {
                        Navigator.pushReplacementNamed(context, GameItem.route,
                            arguments: {
                              'id': game.id,
                              'home': game.home,
                              'away': game.away
                            });
                      },
              );
            });
      },
    );
  }
}
