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
  String get name;

  @nullable
  String get username;

  @nullable
  String get password;

  @nullable
  int get age;

  @nullable
  int get height;

  @nullable
  int get weight;

  @nullable
  String get phonenumber;

  @nullable
  String get disability;

  @nullable
  String get objective;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserstableRecordBuilder builder) => builder
    ..name = ''
    ..username = ''
    ..password = ''
    ..age = 0
    ..height = 0
    ..weight = 0
    ..phonenumber = ''
    ..disability = ''
    ..objective = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

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
  String password,
  int age,
  int height,
  int weight,
  String phonenumber,
  String disability,
  String objective,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        UserstableRecord.serializer,
        UserstableRecord((u) => u
          ..name = name
          ..username = username
          ..password = password
          ..age = age
          ..height = height
          ..weight = weight
          ..phonenumber = phonenumber
          ..disability = disability
          ..objective = objective
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
