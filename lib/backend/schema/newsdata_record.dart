import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'newsdata_record.g.dart';

abstract class NewsdataRecord
    implements Built<NewsdataRecord, NewsdataRecordBuilder> {
  static Serializer<NewsdataRecord> get serializer =>
      _$newsdataRecordSerializer;

  String? get headline;

  String? get description;

  String? get image;

  int? get minread;

  DateTime? get datetime;

  int? get newsid;

  String? get tags;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NewsdataRecordBuilder builder) => builder
    ..headline = ''
    ..description = ''
    ..image = ''
    ..minread = 0
    ..newsid = 0
    ..tags = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('newsdata');

  static Stream<NewsdataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NewsdataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NewsdataRecord._();
  factory NewsdataRecord([void Function(NewsdataRecordBuilder) updates]) =
      _$NewsdataRecord;

  static NewsdataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNewsdataRecordData({
  String? headline,
  String? description,
  String? image,
  int? minread,
  DateTime? datetime,
  int? newsid,
  String? tags,
}) {
  final firestoreData = serializers.toFirestore(
    NewsdataRecord.serializer,
    NewsdataRecord(
      (n) => n
        ..headline = headline
        ..description = description
        ..image = image
        ..minread = minread
        ..datetime = datetime
        ..newsid = newsid
        ..tags = tags,
    ),
  );

  return firestoreData;
}
