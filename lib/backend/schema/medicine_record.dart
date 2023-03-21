import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'medicine_record.g.dart';

abstract class MedicineRecord
    implements Built<MedicineRecord, MedicineRecordBuilder> {
  static Serializer<MedicineRecord> get serializer =>
      _$medicineRecordSerializer;

  @BuiltValueField(wireName: 'last_edited')
  DateTime? get lastEdited;

  DateTime? get manufacturing;

  DateTime? get expiry;

  String? get name;

  String? get batch;

  int? get quantity;

  DocumentReference? get owner;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MedicineRecordBuilder builder) => builder
    ..name = ''
    ..batch = ''
    ..quantity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Medicine');

  static Stream<MedicineRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MedicineRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MedicineRecord._();
  factory MedicineRecord([void Function(MedicineRecordBuilder) updates]) =
      _$MedicineRecord;

  static MedicineRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMedicineRecordData({
  DateTime? lastEdited,
  DateTime? manufacturing,
  DateTime? expiry,
  String? name,
  String? batch,
  int? quantity,
  DocumentReference? owner,
}) {
  final firestoreData = serializers.toFirestore(
    MedicineRecord.serializer,
    MedicineRecord(
      (m) => m
        ..lastEdited = lastEdited
        ..manufacturing = manufacturing
        ..expiry = expiry
        ..name = name
        ..batch = batch
        ..quantity = quantity
        ..owner = owner,
    ),
  );

  return firestoreData;
}
