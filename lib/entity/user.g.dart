// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    uid: json['uid'] as String,
    displayName: json['displayName'] as String,
    photoURL: json['photoURL'] as String,
    signedInAt: json['signedInAt'] == null
        ? null
        : DateTime.parse(json['signedInAt'] as String),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
      'signedInAt': instance.signedInAt?.toIso8601String(),
    };
