// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secret.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Secret _$_$_SecretFromJson(Map<String, dynamic> json) {
  return _$_Secret(
    accessToken: json['accessToken'] as String,
    authTokenSecret: json['authTokenSecret'] as String,
  );
}

Map<String, dynamic> _$_$_SecretToJson(_$_Secret instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'authTokenSecret': instance.authTokenSecret,
    };
