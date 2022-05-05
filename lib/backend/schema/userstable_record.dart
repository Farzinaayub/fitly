import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'userstable_record.g.dart';

abstract class UserstableRecord
    implements Built<UserstableRecord, UserstableRecordBuilder> {
  static Serializer<UserstableRecord> get serializer =>
      _$userstableRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'NAME')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'USERNAME')
  String get username;

  @nullable
  @BuiltValueField(wireName: 'MAIL')
  String get mail;

  @nullable
  double get height;

  @nullable
  int get weight;

  @nullable
  int get phone;

  @nullable
  String get propic;

  @nullable
  String get gender;

  @nullable
  String get agecat;

  @nullable
  String get objective;

  @nullable
  String get password;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserstableRecordBuilder builder) => builder
    ..name = ''
    ..username = ''
    ..mail = ''
    ..height = 0.0
    ..weight = 0
    ..phone = 0
    ..propic = ''
    ..gender = ''
    ..agecat = ''
    ..objective = ''
    ..password = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userstable');

  static Stream<UserstableRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserstableRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserstableRecord._();
  factory UserstableRecord([void Function(UserstableRecordBuilder) updates]) =
      _$UserstableRecord;

  static UserstableRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserstableRecordData({
  String name,
  String username,
  String mail,
  double height,
  int weight,
  int phone,
  String propic,
  String gender,
  String agecat,
  String objective,
  String password,
}) =>
    serializers.toFirestore(
        UserstableRecord.serializer,
        UserstableRecord((u) => u
          ..name = name
          ..username = username
          ..mail = mail
          ..height = height
          ..weight = weight
          ..phone = phone
          ..propic = propic
          ..gender = gender
          ..agecat = agecat
          ..objective = objective
          ..password = password));
