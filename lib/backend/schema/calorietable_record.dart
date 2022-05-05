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
  String get food;

  @nullable
  int get calorie;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CalorietableRecordBuilder builder) => builder
    ..food = ''
    ..calorie = 0;

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
  String food,
  int calorie,
}) =>
    serializers.toFirestore(
        CalorietableRecord.serializer,
        CalorietableRecord((c) => c
          ..food = food
          ..calorie = calorie));
