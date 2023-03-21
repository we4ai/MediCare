import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'schedule_record.g.dart';

abstract class ScheduleRecord
    implements Built<ScheduleRecord, ScheduleRecordBuilder> {
  static Serializer<ScheduleRecord> get serializer =>
      _$scheduleRecordSerializer;

  DocumentReference? get medicine;

  int? get dosage;

  int? get interval;

  int? get quantity;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ScheduleRecordBuilder builder) => builder
    ..dosage = 0
    ..interval = 0
    ..quantity = 0
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Schedule');

  static Stream<ScheduleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ScheduleRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ScheduleRecord._();
  factory ScheduleRecord([void Function(ScheduleRecordBuilder) updates]) =
      _$ScheduleRecord;

  static ScheduleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createScheduleRecordData({
  DocumentReference? medicine,
  int? dosage,
  int? interval,
  int? quantity,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    ScheduleRecord.serializer,
    ScheduleRecord(
      (s) => s
        ..medicine = medicine
        ..dosage = dosage
        ..interval = interval
        ..quantity = quantity
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
