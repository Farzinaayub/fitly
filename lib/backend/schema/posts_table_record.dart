import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'posts_table_record.g.dart';

abstract class PostsTableRecord
    implements Built<PostsTableRecord, PostsTableRecordBuilder> {
  static Serializer<PostsTableRecord> get serializer =>
      _$postsTableRecordSerializer;

  @nullable
  String get username;

  @nullable
  String get location;

  @nullable
  DateTime get timestamp;

  @nullable
  String get post;

  @nullable
  String get picture;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PostsTableRecordBuilder builder) => builder
    ..username = ''
    ..location = ''
    ..post = ''
    ..picture = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts_table');

  static Stream<PostsTableRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PostsTableRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PostsTableRecord._();
  factory PostsTableRecord([void Function(PostsTableRecordBuilder) updates]) =
      _$PostsTableRecord;

  static PostsTableRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPostsTableRecordData({
  String username,
  String location,
  DateTime timestamp,
  String post,
  String picture,
}) =>
    serializers.toFirestore(
        PostsTableRecord.serializer,
        PostsTableRecord((p) => p
          ..username = username
          ..location = location
          ..timestamp = timestamp
          ..post = post
          ..picture = picture));
