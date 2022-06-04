// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league.dart';

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
abstract class LeagueCollectionReference
    implements LeagueQuery, FirestoreCollectionReference<LeagueQuerySnapshot> {
  factory LeagueCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$LeagueCollectionReference;

  static League fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return League.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    League value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  LeagueDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<LeagueDocumentReference> add(League value);
}

class _$LeagueCollectionReference extends _$LeagueQuery
    implements LeagueCollectionReference {
  factory _$LeagueCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$LeagueCollectionReference._(
      firestore.collection('leagues').withConverter(
            fromFirestore: LeagueCollectionReference.fromFirestore,
            toFirestore: LeagueCollectionReference.toFirestore,
          ),
    );
  }

  _$LeagueCollectionReference._(
    CollectionReference<League> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<League> get reference =>
      super.reference as CollectionReference<League>;

  @override
  LeagueDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return LeagueDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<LeagueDocumentReference> add(League value) {
    return reference.add(value).then((ref) => LeagueDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$LeagueCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class LeagueDocumentReference
    extends FirestoreDocumentReference<LeagueDocumentSnapshot> {
  factory LeagueDocumentReference(DocumentReference<League> reference) =
      _$LeagueDocumentReference;

  DocumentReference<League> get reference;

  /// A reference to the [LeagueCollectionReference] containing this document.
  LeagueCollectionReference get parent {
    return _$LeagueCollectionReference(reference.firestore);
  }

  @override
  Stream<LeagueDocumentSnapshot> snapshots();

  @override
  Future<LeagueDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String flag,
    String country,
    String name,
  });

  Future<void> set(League value);
}

class _$LeagueDocumentReference
    extends FirestoreDocumentReference<LeagueDocumentSnapshot>
    implements LeagueDocumentReference {
  _$LeagueDocumentReference(this.reference);

  @override
  final DocumentReference<League> reference;

  /// A reference to the [LeagueCollectionReference] containing this document.
  LeagueCollectionReference get parent {
    return _$LeagueCollectionReference(reference.firestore);
  }

  @override
  Stream<LeagueDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return LeagueDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<LeagueDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return LeagueDocumentSnapshot._(
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
    Object? flag = _sentinel,
    Object? country = _sentinel,
    Object? name = _sentinel,
  }) async {
    final json = {
      if (flag != _sentinel) "flag": flag as String,
      if (country != _sentinel) "country": country as String,
      if (name != _sentinel) "name": name as String,
    };

    return reference.update(json);
  }

  Future<void> set(League value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is LeagueDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class LeagueDocumentSnapshot extends FirestoreDocumentSnapshot {
  LeagueDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<League> snapshot;

  @override
  LeagueDocumentReference get reference {
    return LeagueDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final League? data;
}

abstract class LeagueQuery implements QueryReference<LeagueQuerySnapshot> {
  @override
  LeagueQuery limit(int limit);

  @override
  LeagueQuery limitToLast(int limit);

  LeagueQuery whereFlag({
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
  LeagueQuery whereCountry({
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
  LeagueQuery whereName({
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

  LeagueQuery orderByFlag({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    LeagueDocumentSnapshot? startAtDocument,
    LeagueDocumentSnapshot? endAtDocument,
    LeagueDocumentSnapshot? endBeforeDocument,
    LeagueDocumentSnapshot? startAfterDocument,
  });

  LeagueQuery orderByCountry({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    LeagueDocumentSnapshot? startAtDocument,
    LeagueDocumentSnapshot? endAtDocument,
    LeagueDocumentSnapshot? endBeforeDocument,
    LeagueDocumentSnapshot? startAfterDocument,
  });

  LeagueQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    LeagueDocumentSnapshot? startAtDocument,
    LeagueDocumentSnapshot? endAtDocument,
    LeagueDocumentSnapshot? endBeforeDocument,
    LeagueDocumentSnapshot? startAfterDocument,
  });
}

class _$LeagueQuery extends QueryReference<LeagueQuerySnapshot>
    implements LeagueQuery {
  _$LeagueQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<League> reference;

  LeagueQuerySnapshot _decodeSnapshot(
    QuerySnapshot<League> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return LeagueQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<LeagueDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: LeagueDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return LeagueQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<LeagueQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<LeagueQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  LeagueQuery limit(int limit) {
    return _$LeagueQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  LeagueQuery limitToLast(int limit) {
    return _$LeagueQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  LeagueQuery whereFlag({
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
    return _$LeagueQuery(
      reference.where(
        'flag',
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

  LeagueQuery whereCountry({
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
    return _$LeagueQuery(
      reference.where(
        'country',
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

  LeagueQuery whereName({
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
    return _$LeagueQuery(
      reference.where(
        'name',
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

  LeagueQuery orderByFlag({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    LeagueDocumentSnapshot? startAtDocument,
    LeagueDocumentSnapshot? endAtDocument,
    LeagueDocumentSnapshot? endBeforeDocument,
    LeagueDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('flag', descending: descending);

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

    return _$LeagueQuery(query, _collection);
  }

  LeagueQuery orderByCountry({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    LeagueDocumentSnapshot? startAtDocument,
    LeagueDocumentSnapshot? endAtDocument,
    LeagueDocumentSnapshot? endBeforeDocument,
    LeagueDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('country', descending: descending);

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

    return _$LeagueQuery(query, _collection);
  }

  LeagueQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    LeagueDocumentSnapshot? startAtDocument,
    LeagueDocumentSnapshot? endAtDocument,
    LeagueDocumentSnapshot? endBeforeDocument,
    LeagueDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('name', descending: descending);

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

    return _$LeagueQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$LeagueQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class LeagueQuerySnapshot
    extends FirestoreQuerySnapshot<LeagueQueryDocumentSnapshot> {
  LeagueQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<League> snapshot;

  @override
  final List<LeagueQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<LeagueDocumentSnapshot>> docChanges;
}

class LeagueQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements LeagueDocumentSnapshot {
  LeagueQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<League> snapshot;

  @override
  LeagueDocumentReference get reference {
    return LeagueDocumentReference(snapshot.reference);
  }

  @override
  final League data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

League _$LeagueFromJson(Map<String, dynamic> json) => League(
      flag: json['flag'] as String,
      country: json['country'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$LeagueToJson(League instance) => <String, dynamic>{
      'flag': instance.flag,
      'country': instance.country,
      'name': instance.name,
    };
