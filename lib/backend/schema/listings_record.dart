import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListingsRecord extends FirestoreRecord {
  ListingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "currentBid" field.
  double? _currentBid;
  double get currentBid => _currentBid ?? 0.0;
  bool hasCurrentBid() => _currentBid != null;

  // "minBid" field.
  double? _minBid;
  double get minBid => _minBid ?? 0.0;
  bool hasMinBid() => _minBid != null;

  // "maxBid" field.
  double? _maxBid;
  double get maxBid => _maxBid ?? 0.0;
  bool hasMaxBid() => _maxBid != null;

  // "maxBidUID" field.
  DocumentReference? _maxBidUID;
  DocumentReference? get maxBidUID => _maxBidUID;
  bool hasMaxBidUID() => _maxBidUID != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "aboutProduct" field.
  String? _aboutProduct;
  String get aboutProduct => _aboutProduct ?? '';
  bool hasAboutProduct() => _aboutProduct != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _currentBid = castToType<double>(snapshotData['currentBid']);
    _minBid = castToType<double>(snapshotData['minBid']);
    _maxBid = castToType<double>(snapshotData['maxBid']);
    _maxBidUID = snapshotData['maxBidUID'] as DocumentReference?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _aboutProduct = snapshotData['aboutProduct'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listings');

  static Stream<ListingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListingsRecord.fromSnapshot(s));

  static Future<ListingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListingsRecord.fromSnapshot(s));

  static ListingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
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
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'startDate': startDate,
      'endDate': endDate,
      'currentBid': currentBid,
      'minBid': minBid,
      'maxBid': maxBid,
      'maxBidUID': maxBidUID,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'uid': uid,
      'aboutProduct': aboutProduct,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListingsRecordDocumentEquality implements Equality<ListingsRecord> {
  const ListingsRecordDocumentEquality();

  @override
  bool equals(ListingsRecord? e1, ListingsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.currentBid == e2?.currentBid &&
        e1?.minBid == e2?.minBid &&
        e1?.maxBid == e2?.maxBid &&
        e1?.maxBidUID == e2?.maxBidUID &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.uid == e2?.uid &&
        e1?.aboutProduct == e2?.aboutProduct;
  }

  @override
  int hash(ListingsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.image,
        e?.startDate,
        e?.endDate,
        e?.currentBid,
        e?.minBid,
        e?.maxBid,
        e?.maxBidUID,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber,
        e?.uid,
        e?.aboutProduct
      ]);

  @override
  bool isValidKey(Object? o) => o is ListingsRecord;
}
