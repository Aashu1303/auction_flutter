import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'listings_record.g.dart';

abstract class ListingsRecord
    implements Built<ListingsRecord, ListingsRecordBuilder> {
  static Serializer<ListingsRecord> get serializer =>
      _$listingsRecordSerializer;

  String? get name;

  String? get image;

  DateTime? get startDate;

  DateTime? get endDate;

  double? get currentBid;

  double? get minBid;

  double? get maxBid;

  DocumentReference? get maxBidUID;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  DocumentReference? get uid;

  String? get aboutProduct;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ListingsRecordBuilder builder) => builder
    ..name = ''
    ..image = ''
    ..currentBid = 0.0
    ..minBid = 0.0
    ..maxBid = 0.0
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..aboutProduct = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listings');

  static Stream<ListingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ListingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ListingsRecord._();
  factory ListingsRecord([void Function(ListingsRecordBuilder) updates]) =
      _$ListingsRecord;

  static ListingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createListingsRecordData({
  String? name,
  String? image,
  DateTime? startDate,
  DateTime? endDate,
  double? currentBid,
  double? minBid,
  double? maxBid,
  DocumentReference? maxBidUID,
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  DocumentReference? uid,
  String? aboutProduct,
}) {
  final firestoreData = serializers.toFirestore(
    ListingsRecord.serializer,
    ListingsRecord(
      (l) => l
        ..name = name
        ..image = image
        ..startDate = startDate
        ..endDate = endDate
        ..currentBid = currentBid
        ..minBid = minBid
        ..maxBid = maxBid
        ..maxBidUID = maxBidUID
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..uid = uid
        ..aboutProduct = aboutProduct,
    ),
  );

  return firestoreData;
}
