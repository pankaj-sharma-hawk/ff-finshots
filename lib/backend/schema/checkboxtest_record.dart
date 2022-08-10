import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'checkboxtest_record.g.dart';

abstract class CheckboxtestRecord
    implements Built<CheckboxtestRecord, CheckboxtestRecordBuilder> {
  static Serializer<CheckboxtestRecord> get serializer =>
      _$checkboxtestRecordSerializer;

  int? get id;

  BuiltList<String>? get checklist;

  String? get email;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CheckboxtestRecordBuilder builder) => builder
    ..id = 0
    ..checklist = ListBuilder()
    ..email = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('checkboxtest');

  static Stream<CheckboxtestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CheckboxtestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CheckboxtestRecord._();
  factory CheckboxtestRecord(
          [void Function(CheckboxtestRecordBuilder) updates]) =
      _$CheckboxtestRecord;

  static CheckboxtestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCheckboxtestRecordData({
  int? id,
  String? email,
}) {
  final firestoreData = serializers.toFirestore(
    CheckboxtestRecord.serializer,
    CheckboxtestRecord(
      (c) => c
        ..id = id
        ..checklist = null
        ..email = email,
    ),
  );

  return firestoreData;
}
