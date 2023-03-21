// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_order_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransferOrderRecord> _$transferOrderRecordSerializer =
    new _$TransferOrderRecordSerializer();

class _$TransferOrderRecordSerializer
    implements StructuredSerializer<TransferOrderRecord> {
  @override
  final Iterable<Type> types = const [
    TransferOrderRecord,
    _$TransferOrderRecord
  ];
  @override
  final String wireName = 'TransferOrderRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TransferOrderRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.doner;
    if (value != null) {
      result
        ..add('doner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reciever;
    if (value != null) {
      result
        ..add('reciever')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.medicine;
    if (value != null) {
      result
        ..add('medicine')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  TransferOrderRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransferOrderRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'doner':
          result.doner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reciever':
          result.reciever = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'medicine':
          result.medicine = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$TransferOrderRecord extends TransferOrderRecord {
  @override
  final DocumentReference<Object?>? doner;
  @override
  final String? id;
  @override
  final DocumentReference<Object?>? reciever;
  @override
  final DocumentReference<Object?>? medicine;
  @override
  final int? quantity;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TransferOrderRecord(
          [void Function(TransferOrderRecordBuilder)? updates]) =>
      (new TransferOrderRecordBuilder()..update(updates))._build();

  _$TransferOrderRecord._(
      {this.doner,
      this.id,
      this.reciever,
      this.medicine,
      this.quantity,
      this.ffRef})
      : super._();

  @override
  TransferOrderRecord rebuild(
          void Function(TransferOrderRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransferOrderRecordBuilder toBuilder() =>
      new TransferOrderRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransferOrderRecord &&
        doner == other.doner &&
        id == other.id &&
        reciever == other.reciever &&
        medicine == other.medicine &&
        quantity == other.quantity &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, doner.hashCode), id.hashCode),
                    reciever.hashCode),
                medicine.hashCode),
            quantity.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransferOrderRecord')
          ..add('doner', doner)
          ..add('id', id)
          ..add('reciever', reciever)
          ..add('medicine', medicine)
          ..add('quantity', quantity)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TransferOrderRecordBuilder
    implements Builder<TransferOrderRecord, TransferOrderRecordBuilder> {
  _$TransferOrderRecord? _$v;

  DocumentReference<Object?>? _doner;
  DocumentReference<Object?>? get doner => _$this._doner;
  set doner(DocumentReference<Object?>? doner) => _$this._doner = doner;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DocumentReference<Object?>? _reciever;
  DocumentReference<Object?>? get reciever => _$this._reciever;
  set reciever(DocumentReference<Object?>? reciever) =>
      _$this._reciever = reciever;

  DocumentReference<Object?>? _medicine;
  DocumentReference<Object?>? get medicine => _$this._medicine;
  set medicine(DocumentReference<Object?>? medicine) =>
      _$this._medicine = medicine;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TransferOrderRecordBuilder() {
    TransferOrderRecord._initializeBuilder(this);
  }

  TransferOrderRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _doner = $v.doner;
      _id = $v.id;
      _reciever = $v.reciever;
      _medicine = $v.medicine;
      _quantity = $v.quantity;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransferOrderRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransferOrderRecord;
  }

  @override
  void update(void Function(TransferOrderRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransferOrderRecord build() => _build();

  _$TransferOrderRecord _build() {
    final _$result = _$v ??
        new _$TransferOrderRecord._(
            doner: doner,
            id: id,
            reciever: reciever,
            medicine: medicine,
            quantity: quantity,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
