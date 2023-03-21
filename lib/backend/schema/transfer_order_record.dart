import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transfer_order_record.g.dart';

abstract class TransferOrderRecord
    implements Built<TransferOrderRecord, TransferOrderRecordBuilder> {
  static Serializer<TransferOrderRecord> get serializer =>
      _$transferOrderRecordSerializer;

  DocumentReference? get doner;

  String? get id;

  DocumentReference? get reciever;

  DocumentReference? get medicine;

  int? get quantity;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TransferOrderRecordBuilder builder) => builder
    ..id = ''
    ..quantity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transfer_order');

  static Stream<TransferOrderRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TransferOrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TransferOrderRecord._();
  factory TransferOrderRecord(
          [void Function(TransferOrderRecordBuilder) updates]) =
      _$TransferOrderRecord;

  static TransferOrderRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTransferOrderRecordData({
  DocumentReference? doner,
  String? id,
  DocumentReference? reciever,
  DocumentReference? medicine,
  int? quantity,
}) {
  final firestoreData = serializers.toFirestore(
    TransferOrderRecord.serializer,
    TransferOrderRecord(
      (t) => t
        ..doner = doner
        ..id = id
        ..reciever = reciever
        ..medicine = medicine
        ..quantity = quantity,
    ),
  );

  return firestoreData;
}
