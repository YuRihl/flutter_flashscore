// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class GameCollectionReference
    implements GameQuery, FirestoreCollectionReference<GameQuerySnapshot> {
  factory GameCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$GameCollectionReference;

  static Game fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Game.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Game value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  GameDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<GameDocumentReference> add(Game value);
}

class _$GameCollectionReference extends _$GameQuery
    implements GameCollectionReference {
  factory _$GameCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$GameCollectionReference._(
      firestore.collection('games').withConverter(
            fromFirestore: GameCollectionReference.fromFirestore,
            toFirestore: GameCollectionReference.toFirestore,
          ),
    );
  }

  _$GameCollectionReference._(
    CollectionReference<Game> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<Game> get reference =>
      super.reference as CollectionReference<Game>;

  @override
  GameDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return GameDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<GameDocumentReference> add(Game value) {
    return reference.add(value).then((ref) => GameDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$GameCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class GameDocumentReference
    extends FirestoreDocumentReference<GameDocumentSnapshot> {
  factory GameDocumentReference(DocumentReference<Game> reference) =
      _$GameDocumentReference;

  DocumentReference<Game> get reference;

  /// A reference to the [GameCollectionReference] containing this document.
  GameCollectionReference get parent {
    return _$GameCollectionReference(reference.firestore);
  }

  @override
  Stream<GameDocumentSnapshot> snapshots();

  @override
  Future<GameDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String id,
    String leagueId,
    String home,
    String away,
  });

  Future<void> set(Game value);
}

class _$GameDocumentReference
    extends FirestoreDocumentReference<GameDocumentSnapshot>
    implements GameDocumentReference {
  _$GameDocumentReference(this.reference);

  @override
  final DocumentReference<Game> reference;

  /// A reference to the [GameCollectionReference] containing this document.
  GameCollectionReference get parent {
    return _$GameCollectionReference(reference.firestore);
  }

  @override
  Stream<GameDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return GameDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<GameDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return GameDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? id = _sentinel,
    Object? leagueId = _sentinel,
    Object? home = _sentinel,
    Object? away = _sentinel,
  }) async {
    final json = {
      if (id != _sentinel) "id": id as String,
      if (leagueId != _sentinel) "leagueId": leagueId as String,
      if (home != _sentinel) "home": home as String,
      if (away != _sentinel) "away": away as String,
    };

    return reference.update(json);
  }

  Future<void> set(Game value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is GameDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class GameDocumentSnapshot extends FirestoreDocumentSnapshot {
  GameDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<Game> snapshot;

  @override
  GameDocumentReference get reference {
    return GameDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Game? data;
}

abstract class GameQuery implements QueryReference<GameQuerySnapshot> {
  @override
  GameQuery limit(int limit);

  @override
  GameQuery limitToLast(int limit);

  GameQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  GameQuery whereLeagueId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  GameQuery whereHome({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  GameQuery whereAway({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  GameQuery whereTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  });

  GameQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameDocumentSnapshot? startAtDocument,
    GameDocumentSnapshot? endAtDocument,
    GameDocumentSnapshot? endBeforeDocument,
    GameDocumentSnapshot? startAfterDocument,
  });

  GameQuery orderByLeagueId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameDocumentSnapshot? startAtDocument,
    GameDocumentSnapshot? endAtDocument,
    GameDocumentSnapshot? endBeforeDocument,
    GameDocumentSnapshot? startAfterDocument,
  });

  GameQuery orderByHome({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameDocumentSnapshot? startAtDocument,
    GameDocumentSnapshot? endAtDocument,
    GameDocumentSnapshot? endBeforeDocument,
    GameDocumentSnapshot? startAfterDocument,
  });

  GameQuery orderByAway({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameDocumentSnapshot? startAtDocument,
    GameDocumentSnapshot? endAtDocument,
    GameDocumentSnapshot? endBeforeDocument,
    GameDocumentSnapshot? startAfterDocument,
  });
}

class _$GameQuery extends QueryReference<GameQuerySnapshot>
    implements GameQuery {
  _$GameQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<Game> reference;

  GameQuerySnapshot _decodeSnapshot(
    QuerySnapshot<Game> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return GameQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<GameDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: GameDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return GameQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<GameQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<GameQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  GameQuery limit(int limit) {
    return _$GameQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  GameQuery limitToLast(int limit) {
    return _$GameQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  GameQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$GameQuery(
      reference.where(
        'id',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GameQuery whereLeagueId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$GameQuery(
      reference.where(
        'leagueId',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GameQuery whereHome({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$GameQuery(
      reference.where(
        'home',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GameQuery whereAway({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$GameQuery(
      reference.where(
        'away',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GameQuery whereTime({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  }) {
    return _$GameQuery(
      reference.where(
        'time',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  GameQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameDocumentSnapshot? startAtDocument,
    GameDocumentSnapshot? endAtDocument,
    GameDocumentSnapshot? endBeforeDocument,
    GameDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('id', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GameQuery(query, _collection);
  }

  GameQuery orderByLeagueId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameDocumentSnapshot? startAtDocument,
    GameDocumentSnapshot? endAtDocument,
    GameDocumentSnapshot? endBeforeDocument,
    GameDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('leagueId', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GameQuery(query, _collection);
  }

  GameQuery orderByHome({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameDocumentSnapshot? startAtDocument,
    GameDocumentSnapshot? endAtDocument,
    GameDocumentSnapshot? endBeforeDocument,
    GameDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('home', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GameQuery(query, _collection);
  }

  GameQuery orderByAway({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameDocumentSnapshot? startAtDocument,
    GameDocumentSnapshot? endAtDocument,
    GameDocumentSnapshot? endBeforeDocument,
    GameDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('away', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$GameQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$GameQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class GameQuerySnapshot
    extends FirestoreQuerySnapshot<GameQueryDocumentSnapshot> {
  GameQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<Game> snapshot;

  @override
  final List<GameQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<GameDocumentSnapshot>> docChanges;
}

class GameQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements GameDocumentSnapshot {
  GameQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<Game> snapshot;

  @override
  GameDocumentReference get reference {
    return GameDocumentReference(snapshot.reference);
  }

  @override
  final Game data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      id: json['id'] as String,
      leagueId: json['leagueId'] as String,
      home: json['home'] as String,
      away: json['away'] as String,
      result: json['result'] as Map<String, dynamic>,
      time: const TimestampConvertDatetime()
          .fromJson(json['time'] as Timestamp)
          .add(Duration(hours: 3)),
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'id': instance.id,
      'leagueId': instance.leagueId,
      'home': instance.home,
      'away': instance.away,
      'result': instance.result,
      'time': const TimestampConvertDatetime().toJson(instance.time),
    };
