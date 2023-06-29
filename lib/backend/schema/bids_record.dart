import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BidsRecord extends FirestoreRecord {
  BidsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _amount = castToType<double>(snapshotData['amount']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bids')
          : FirebaseFirestore.instance.collectionGroup('bids');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('bids').doc();

  static Stream<BidsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BidsRecord.fromSnapshot(s));

  static Future<BidsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BidsRecord.fromSnapshot(s));

  static BidsRecord fromSnapshot(DocumentSnapshot snapshot) => BidsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BidsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BidsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BidsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BidsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBidsRecordData({
  double? amount,
  DateTime? timestamp,
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'amount': amount,
      'timestamp': timestamp,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class BidsRecordDocumentEquality implements Equality<BidsRecord> {
  const BidsRecordDocumentEquality();

  @override
  bool equals(BidsRecord? e1, BidsRecord? e2) {
    return e1?.amount == e2?.amount &&
        e1?.timestamp == e2?.timestamp &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(BidsRecord? e) =>
      const ListEquality().hash([e?.amount, e?.timestamp, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is BidsRecord;
}
