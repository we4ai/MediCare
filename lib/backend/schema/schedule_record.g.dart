// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScheduleRecord> _$scheduleRecordSerializer =
    new _$ScheduleRecordSerializer();

class _$ScheduleRecordSerializer
    implements StructuredSerializer<ScheduleRecord> {
  @override
  final Iterable<Type> types = const [ScheduleRecord, _$ScheduleRecord];
  @override
  final String wireName = 'ScheduleRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ScheduleRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.medicine;
    if (value != null) {
      result
        ..add('medicine')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.dosage;
    if (value != null) {
      result
        ..add('dosage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.interval;
    if (value != null) {
      result
        ..add('interval')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
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
  ScheduleRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScheduleRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'medicine':
          result.medicine = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'dosage':
          result.dosage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'interval':
          result.interval = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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
        case 'uid':
          result.uid = serializers.deserialize(value,
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

class _$ScheduleRecord extends ScheduleRecord {
  @override
  final DocumentReference<Object?>? medicine;
  @override
  final int? dosage;
  @override
  final int? interval;
  @override
  final int? quantity;
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ScheduleRecord([void Function(ScheduleRecordBuilder)? updates]) =>
      (new ScheduleRecordBuilder()..update(updates))._build();

  _$ScheduleRecord._(
      {this.medicine,
      this.dosage,
      this.interval,
      this.quantity,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.ffRef})
      : super._();

  @override
  ScheduleRecord rebuild(void Function(ScheduleRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleRecordBuilder toBuilder() =>
      new ScheduleRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleRecord &&
        medicine == other.medicine &&
        dosage == other.dosage &&
        interval == other.interval &&
        quantity == other.quantity &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
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
                                        $jc($jc(0, medicine.hashCode),
                                            dosage.hashCode),
                                        interval.hashCode),
                                    quantity.hashCode),
                                email.hashCode),
                            displayName.hashCode),
                        photoUrl.hashCode),
                    uid.hashCode),
                createdTime.hashCode),
            phoneNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduleRecord')
          ..add('medicine', medicine)
          ..add('dosage', dosage)
          ..add('interval', interval)
          ..add('quantity', quantity)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ScheduleRecordBuilder
    implements Builder<ScheduleRecord, ScheduleRecordBuilder> {
  _$ScheduleRecord? _$v;

  DocumentReference<Object?>? _medicine;
  DocumentReference<Object?>? get medicine => _$this._medicine;
  set medicine(DocumentReference<Object?>? medicine) =>
      _$this._medicine = medicine;

  int? _dosage;
  int? get dosage => _$this._dosage;
  set dosage(int? dosage) => _$this._dosage = dosage;

  int? _interval;
  int? get interval => _$this._interval;
  set interval(int? interval) => _$this._interval = interval;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ScheduleRecordBuilder() {
    ScheduleRecord._initializeBuilder(this);
  }

  ScheduleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _medicine = $v.medicine;
      _dosage = $v.dosage;
      _interval = $v.interval;
      _quantity = $v.quantity;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduleRecord;
  }

  @override
  void update(void Function(ScheduleRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduleRecord build() => _build();

  _$ScheduleRecord _build() {
    final _$result = _$v ??
        new _$ScheduleRecord._(
            medicine: medicine,
            dosage: dosage,
            interval: interval,
            quantity: quantity,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
