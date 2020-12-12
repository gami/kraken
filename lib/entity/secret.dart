import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'secret.freezed.dart';

@freezed
abstract class Secret with _$Secret {
  const factory Secret({
    String accessToken,
    String authTokenSecret,
  }) = _Secret;
  factory Secret.fromJson(Map<String, dynamic> json) => _$SecretFromJson(json);
}
