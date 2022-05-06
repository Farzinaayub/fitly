import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'calorietable_record.g.dart';

abstract class CalorietableRecord
    implements Built<CalorietableRecord, CalorietableRecordBuilder> {
  static Serializer<CalorietableRecord> get serializer =>
      _$calorietableRecordSerializer;

  @nullable
  int get calorie;

  @nullable
  String get username;

  @nullable
  DateTime get timestamp;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CalorietableRecordBuilder builder) => builder
    ..calorie = 0
    ..username = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calorietable');

  static Stream<CalorietableRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CalorietableRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CalorietableRecord._();
  factory CalorietableRecord(
          [void Function(CalorietableRecordBuilder) updates]) =
      _$CalorietableRecord;

  static CalorietableRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCalorietableRecordData({
  int calorie,
  String username,
  DateTime timestamp,
}) =>
    serializers.toFirestore(
        CalorietableRecord.serializer,
        CalorietableRecord((c) => c
          ..calorie = calorie
          ..username = username
          ..timestamp = timestamp));
