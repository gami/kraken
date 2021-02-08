// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'secret.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Secret _$SecretFromJson(Map<String, dynamic> json) {
  return _Secret.fromJson(json);
}

/// @nodoc
class _$SecretTearOff {
  const _$SecretTearOff();

// ignore: unused_element
  _Secret call({String accessToken, String authTokenSecret}) {
    return _Secret(
      accessToken: accessToken,
      authTokenSecret: authTokenSecret,
    );
  }

// ignore: unused_element
  Secret fromJson(Map<String, Object> json) {
    return Secret.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Secret = _$SecretTearOff();

/// @nodoc
mixin _$Secret {
  String get accessToken;
  String get authTokenSecret;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SecretCopyWith<Secret> get copyWith;
}

/// @nodoc
abstract class $SecretCopyWith<$Res> {
  factory $SecretCopyWith(Secret value, $Res Function(Secret) then) =
      _$SecretCopyWithImpl<$Res>;
  $Res call({String accessToken, String authTokenSecret});
}

/// @nodoc
class _$SecretCopyWithImpl<$Res> implements $SecretCopyWith<$Res> {
  _$SecretCopyWithImpl(this._value, this._then);

  final Secret _value;
  // ignore: unused_field
  final $Res Function(Secret) _then;

  @override
  $Res call({
    Object accessToken = freezed,
    Object authTokenSecret = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      authTokenSecret: authTokenSecret == freezed
          ? _value.authTokenSecret
          : authTokenSecret as String,
    ));
  }
}

/// @nodoc
abstract class _$SecretCopyWith<$Res> implements $SecretCopyWith<$Res> {
  factory _$SecretCopyWith(_Secret value, $Res Function(_Secret) then) =
      __$SecretCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken, String authTokenSecret});
}

/// @nodoc
class __$SecretCopyWithImpl<$Res> extends _$SecretCopyWithImpl<$Res>
    implements _$SecretCopyWith<$Res> {
  __$SecretCopyWithImpl(_Secret _value, $Res Function(_Secret) _then)
      : super(_value, (v) => _then(v as _Secret));

  @override
  _Secret get _value => super._value as _Secret;

  @override
  $Res call({
    Object accessToken = freezed,
    Object authTokenSecret = freezed,
  }) {
    return _then(_Secret(
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      authTokenSecret: authTokenSecret == freezed
          ? _value.authTokenSecret
          : authTokenSecret as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Secret with DiagnosticableTreeMixin implements _Secret {
  const _$_Secret({this.accessToken, this.authTokenSecret});

  factory _$_Secret.fromJson(Map<String, dynamic> json) =>
      _$_$_SecretFromJson(json);

  @override
  final String accessToken;
  @override
  final String authTokenSecret;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Secret(accessToken: $accessToken, authTokenSecret: $authTokenSecret)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Secret'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('authTokenSecret', authTokenSecret));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Secret &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.authTokenSecret, authTokenSecret) ||
                const DeepCollectionEquality()
                    .equals(other.authTokenSecret, authTokenSecret)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(authTokenSecret);

  @JsonKey(ignore: true)
  @override
  _$SecretCopyWith<_Secret> get copyWith =>
      __$SecretCopyWithImpl<_Secret>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SecretToJson(this);
  }
}

abstract class _Secret implements Secret {
  const factory _Secret({String accessToken, String authTokenSecret}) =
      _$_Secret;

  factory _Secret.fromJson(Map<String, dynamic> json) = _$_Secret.fromJson;

  @override
  String get accessToken;
  @override
  String get authTokenSecret;
  @override
  @JsonKey(ignore: true)
  _$SecretCopyWith<_Secret> get copyWith;
}
