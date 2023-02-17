// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bids_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BidsRecord> _$bidsRecordSerializer = new _$BidsRecordSerializer();

class _$BidsRecordSerializer implements StructuredSerializer<BidsRecord> {
  @override
  final Iterable<Type> types = const [BidsRecord, _$BidsRecord];
  @override
  final String wireName = 'BidsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BidsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  BidsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BidsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$BidsRecord extends BidsRecord {
  @override
  final double? amount;
  @override
  final DateTime? timestamp;
  @override
  final DocumentReference<Object?>? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BidsRecord([void Function(BidsRecordBuilder)? updates]) =>
      (new BidsRecordBuilder()..update(updates))._build();

  _$BidsRecord._({this.amount, this.timestamp, this.uid, this.ffRef})
      : super._();

  @override
  BidsRecord rebuild(void Function(BidsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BidsRecordBuilder toBuilder() => new BidsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BidsRecord &&
        amount == other.amount &&
        timestamp == other.timestamp &&
        uid == other.uid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, amount.hashCode), timestamp.hashCode), uid.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BidsRecord')
          ..add('amount', amount)
          ..add('timestamp', timestamp)
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BidsRecordBuilder implements Builder<BidsRecord, BidsRecordBuilder> {
  _$BidsRecord? _$v;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  DocumentReference<Object?>? _uid;
  DocumentReference<Object?>? get uid => _$this._uid;
  set uid(DocumentReference<Object?>? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BidsRecordBuilder() {
    BidsRecord._initializeBuilder(this);
  }

  BidsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _timestamp = $v.timestamp;
      _uid = $v.uid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BidsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BidsRecord;
  }

  @override
  void update(void Function(BidsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BidsRecord build() => _build();

  _$BidsRecord _build() {
    final _$result = _$v ??
        new _$BidsRecord._(
            amount: amount, timestamp: timestamp, uid: uid, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
