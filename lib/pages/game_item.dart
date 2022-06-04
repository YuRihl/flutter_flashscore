import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';

import '../models/game.dart';

class GameItem extends StatelessWidget {
  static const route = '/game';
  Map inputArguments = {};

  GameItem();

  @override
  Widget build(BuildContext context) {
    inputArguments = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(200, 0, 100, 0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${inputArguments['home']}\t\t\t${inputArguments['away']}',
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
            ],
          )),
      body: FirestoreBuilder<GameQuerySnapshot>(
        ref: games.whereId(isEqualTo: inputArguments['id']),
        builder: (context, snapshot, child) {
          if (snapshot.hasError) return const Text('Something went wrong...');
          if (!snapshot.hasData) return const Text('Waiting for data...');

          GameQuerySnapshot querySnapshot = snapshot.requireData;

          return ListView.builder(
              itemCount: querySnapshot.docs.length,
              itemBuilder: (context, index) {
                Game game = querySnapshot.docs[index].data;

                return Container(
                  margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 200,
                            child: Column(
                              children: [
                                Text(game.home,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24)),
                                Text(
                                  game.result['home'].toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(game.away,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24)),
                              Text(game.result['away'].toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
