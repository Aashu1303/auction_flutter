// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListingsRecord> _$listingsRecordSerializer =
    new _$ListingsRecordSerializer();

class _$ListingsRecordSerializer
    implements StructuredSerializer<ListingsRecord> {
  @override
  final Iterable<Type> types = const [ListingsRecord, _$ListingsRecord];
  @override
  final String wireName = 'ListingsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.currentBid;
    if (value != null) {
      result
        ..add('currentBid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.minBid;
    if (value != null) {
      result
        ..add('minBid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.maxBid;
    if (value != null) {
      result
        ..add('maxBid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.maxBidUID;
    if (value != null) {
      result
        ..add('maxBidUID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.aboutProduct;
    if (value != null) {
      result
        ..add('aboutProduct')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ListingsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'currentBid':
          result.currentBid = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'minBid':
          result.minBid = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'maxBid':
          result.maxBid = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'maxBidUID':
          result.maxBidUID = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'aboutProduct':
          result.aboutProduct = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ListingsRecord extends ListingsRecord {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final double? currentBid;
  @override
  final double? minBid;
  @override
  final double? maxBid;
  @override
  final DocumentReference<Object?>? maxBidUID;
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? uid;
  @override
  final String? aboutProduct;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ListingsRecord([void Function(ListingsRecordBuilder)? updates]) =>
      (new ListingsRecordBuilder()..update(updates))._build();

  _$ListingsRecord._(
      {this.name,
      this.image,
      this.startDate,
      this.endDate,
      this.currentBid,
      this.minBid,
      this.maxBid,
      this.maxBidUID,
      this.email,
      this.displayName,
      this.photoUrl,
      this.createdTime,
      this.phoneNumber,
      this.uid,
      this.aboutProduct,
      this.ffRef})
      : super._();

  @override
  ListingsRecord rebuild(void Function(ListingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListingsRecordBuilder toBuilder() =>
      new ListingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListingsRecord &&
        name == other.name &&
        image == other.image &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        currentBid == other.currentBid &&
        minBid == other.minBid &&
        maxBid == other.maxBid &&
        maxBidUID == other.maxBidUID &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        uid == other.uid &&
        aboutProduct == other.aboutProduct &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(0,
                                                                    name.hashCode),
                                                                image.hashCode),
                                                            startDate.hashCode),
                                                        endDate.hashCode),
                                                    currentBid.hashCode),
                                                minBid.hashCode),
                                            maxBid.hashCode),
                                        maxBidUID.hashCode),
                                    email.hashCode),
                                displayName.hashCode),
                            photoUrl.hashCode),
                        createdTime.hashCode),
                    phoneNumber.hashCode),
                uid.hashCode),
            aboutProduct.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListingsRecord')
          ..add('name', name)
          ..add('image', image)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('currentBid', currentBid)
          ..add('minBid', minBid)
          ..add('maxBid', maxBid)
          ..add('maxBidUID', maxBidUID)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('uid', uid)
          ..add('aboutProduct', aboutProduct)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ListingsRecordBuilder
    implements Builder<ListingsRecord, ListingsRecordBuilder> {
  _$ListingsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  double? _currentBid;
  double? get currentBid => _$this._currentBid;
  set currentBid(double? currentBid) => _$this._currentBid = currentBid;

  double? _minBid;
  double? get minBid => _$this._minBid;
  set minBid(double? minBid) => _$this._minBid = minBid;

  double? _maxBid;
  double? get maxBid => _$this._maxBid;
  set maxBid(double? maxBid) => _$this._maxBid = maxBid;

  DocumentReference<Object?>? _maxBidUID;
  DocumentReference<Object?>? get maxBidUID => _$this._maxBidUID;
  set maxBidUID(DocumentReference<Object?>? maxBidUID) =>
      _$this._maxBidUID = maxBidUID;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _uid;
  DocumentReference<Object?>? get uid => _$this._uid;
  set uid(DocumentReference<Object?>? uid) => _$this._uid = uid;

  String? _aboutProduct;
  String? get aboutProduct => _$this._aboutProduct;
  set aboutProduct(String? aboutProduct) => _$this._aboutProduct = aboutProduct;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ListingsRecordBuilder() {
    ListingsRecord._initializeBuilder(this);
  }

  ListingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _currentBid = $v.currentBid;
      _minBid = $v.minBid;
      _maxBid = $v.maxBid;
      _maxBidUID = $v.maxBidUID;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _uid = $v.uid;
      _aboutProduct = $v.aboutProduct;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListingsRecord;
  }

  @override
  void update(void Function(ListingsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListingsRecord build() => _build();

  _$ListingsRecord _build() {
    final _$result = _$v ??
        new _$ListingsRecord._(
            name: name,
            image: image,
            startDate: startDate,
            endDate: endDate,
            currentBid: currentBid,
            minBid: minBid,
            maxBid: maxBid,
            maxBidUID: maxBidUID,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            uid: uid,
            aboutProduct: aboutProduct,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
