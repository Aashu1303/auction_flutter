import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bids_record.g.dart';

abstract class BidsRecord implements Built<BidsRecord, BidsRecordBuilder> {
  static Serializer<BidsRecord> get serializer => _$bidsRecordSerializer;

  double? get amount;

  DateTime? get timestamp;

  DocumentReference? get uid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(BidsRecordBuilder builder) =>
      builder..amount = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bids')
          : FirebaseFirestore.instance.collectionGroup('bids');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('bids').doc();

  static Stream<BidsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BidsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BidsRecord._();
  factory BidsRecord([void Function(BidsRecordBuilder) updates]) = _$BidsRecord;

  static BidsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBidsRecordData({
  double? amount,
  DateTime? timestamp,
  DocumentReference? uid,
}) {
  final firestoreData = serializers.toFirestore(
    BidsRecord.serializer,
    BidsRecord(
      (b) => b
        ..amount = amount
        ..timestamp = timestamp
        ..uid = uid,
    ),
  );

  return firestoreData;
}
