import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'league.g.dart';

@JsonSerializable(explicitToJson: true)
class League {
  final String flag;
  final String country;
  final String name;

  League({
    required this.flag,
    required this.country,
    required this.name,
  });

  factory League.fromJson(Map<String, Object?> json) => _$LeagueFromJson(json);

  Map<String, Object?> toJson() => _$LeagueToJson(this);
}

@Collection<League>('leagues')
final leagues = LeagueCollectionReference();
