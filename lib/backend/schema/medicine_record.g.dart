// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MedicineRecord> _$medicineRecordSerializer =
    new _$MedicineRecordSerializer();

class _$MedicineRecordSerializer
    implements StructuredSerializer<MedicineRecord> {
  @override
  final Iterable<Type> types = const [MedicineRecord, _$MedicineRecord];
  @override
  final String wireName = 'MedicineRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MedicineRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.lastEdited;
    if (value != null) {
      result
        ..add('last_edited')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.manufacturing;
    if (value != null) {
      result
        ..add('manufacturing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.expiry;
    if (value != null) {
      result
        ..add('expiry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.batch;
    if (value != null) {
      result
        ..add('batch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
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
  MedicineRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MedicineRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'last_edited':
          result.lastEdited = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'manufacturing':
          result.manufacturing = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'expiry':
          result.expiry = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'batch':
          result.batch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
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

class _$MedicineRecord extends MedicineRecord {
  @override
  final DateTime? lastEdited;
  @override
  final DateTime? manufacturing;
  @override
  final DateTime? expiry;
  @override
  final String? name;
  @override
  final String? batch;
  @override
  final int? quantity;
  @override
  final DocumentReference<Object?>? owner;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MedicineRecord([void Function(MedicineRecordBuilder)? updates]) =>
      (new MedicineRecordBuilder()..update(updates))._build();

  _$MedicineRecord._(
      {this.lastEdited,
      this.manufacturing,
      this.expiry,
      this.name,
      this.batch,
      this.quantity,
      this.owner,
      this.ffRef})
      : super._();

  @override
  MedicineRecord rebuild(void Function(MedicineRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MedicineRecordBuilder toBuilder() =>
      new MedicineRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MedicineRecord &&
        lastEdited == other.lastEdited &&
        manufacturing == other.manufacturing &&
        expiry == other.expiry &&
        name == other.name &&
        batch == other.batch &&
        quantity == other.quantity &&
        owner == other.owner &&
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
                            $jc($jc(0, lastEdited.hashCode),
                                manufacturing.hashCode),
                            expiry.hashCode),
                        name.hashCode),
                    batch.hashCode),
                quantity.hashCode),
            owner.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MedicineRecord')
          ..add('lastEdited', lastEdited)
          ..add('manufacturing', manufacturing)
          ..add('expiry', expiry)
          ..add('name', name)
          ..add('batch', batch)
          ..add('quantity', quantity)
          ..add('owner', owner)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MedicineRecordBuilder
    implements Builder<MedicineRecord, MedicineRecordBuilder> {
  _$MedicineRecord? _$v;

  DateTime? _lastEdited;
  DateTime? get lastEdited => _$this._lastEdited;
  set lastEdited(DateTime? lastEdited) => _$this._lastEdited = lastEdited;

  DateTime? _manufacturing;
  DateTime? get manufacturing => _$this._manufacturing;
  set manufacturing(DateTime? manufacturing) =>
      _$this._manufacturing = manufacturing;

  DateTime? _expiry;
  DateTime? get expiry => _$this._expiry;
  set expiry(DateTime? expiry) => _$this._expiry = expiry;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _batch;
  String? get batch => _$this._batch;
  set batch(String? batch) => _$this._batch = batch;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MedicineRecordBuilder() {
    MedicineRecord._initializeBuilder(this);
  }

  MedicineRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastEdited = $v.lastEdited;
      _manufacturing = $v.manufacturing;
      _expiry = $v.expiry;
      _name = $v.name;
      _batch = $v.batch;
      _quantity = $v.quantity;
      _owner = $v.owner;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MedicineRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MedicineRecord;
  }

  @override
  void update(void Function(MedicineRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MedicineRecord build() => _build();

  _$MedicineRecord _build() {
    final _$result = _$v ??
        new _$MedicineRecord._(
            lastEdited: lastEdited,
            manufacturing: manufacturing,
            expiry: expiry,
            name: name,
            batch: batch,
            quantity: quantity,
            owner: owner,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
