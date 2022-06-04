import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

import '../timestamp_converter.dart';

part 'game.g.dart';

@JsonSerializable(explicitToJson: true)
class Game {
  final String id;
  final String leagueId;
  final String home;
  final String away;
  final Map<dynamic, dynamic> result;

  @TimestampConvertDatetime()
  final DateTime time;

  Game({
    required this.id,
    required this.leagueId,
    required this.home,
    required this.away,
    required this.result,
    required this.time,
  });

  factory Game.fromJson(Map<String, Object?> json) => _$GameFromJson(json);

  Map<String, Object?> toJson() => _$GameToJson(this);
}

@Collection<Game>('games')
final games = GameCollectionReference();
