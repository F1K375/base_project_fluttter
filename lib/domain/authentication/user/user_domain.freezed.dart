// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDomain _$UserDomainFromJson(Map<String, dynamic> json) {
  return _UserDomain.fromJson(json);
}

/// @nodoc
mixin _$UserDomain {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get role => throw _privateConstructorUsedError;
  int get nip => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDomainCopyWith<UserDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDomainCopyWith<$Res> {
  factory $UserDomainCopyWith(
          UserDomain value, $Res Function(UserDomain) then) =
      _$UserDomainCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String email,
      int role,
      int nip,
      String accessToken});
}

/// @nodoc
class _$UserDomainCopyWithImpl<$Res> implements $UserDomainCopyWith<$Res> {
  _$UserDomainCopyWithImpl(this._value, this._then);

  final UserDomain _value;
  // ignore: unused_field
  final $Res Function(UserDomain) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? nip = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      nip: nip == freezed
          ? _value.nip
          : nip // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDomainCopyWith<$Res>
    implements $UserDomainCopyWith<$Res> {
  factory _$$_UserDomainCopyWith(
          _$_UserDomain value, $Res Function(_$_UserDomain) then) =
      __$$_UserDomainCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String email,
      int role,
      int nip,
      String accessToken});
}

/// @nodoc
class __$$_UserDomainCopyWithImpl<$Res> extends _$UserDomainCopyWithImpl<$Res>
    implements _$$_UserDomainCopyWith<$Res> {
  __$$_UserDomainCopyWithImpl(
      _$_UserDomain _value, $Res Function(_$_UserDomain) _then)
      : super(_value, (v) => _then(v as _$_UserDomain));

  @override
  _$_UserDomain get _value => super._value as _$_UserDomain;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? nip = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$_UserDomain(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      nip: nip == freezed
          ? _value.nip
          : nip // ignore: cast_nullable_to_non_nullable
              as int,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDomain extends _UserDomain {
  const _$_UserDomain(
      {required this.id,
      required this.name,
      required this.email,
      required this.role,
      required this.nip,
      required this.accessToken})
      : super._();

  factory _$_UserDomain.fromJson(Map<String, dynamic> json) =>
      _$$_UserDomainFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final int role;
  @override
  final int nip;
  @override
  final String accessToken;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDomain &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.nip, nip) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(nip),
      const DeepCollectionEquality().hash(accessToken));

  @JsonKey(ignore: true)
  @override
  _$$_UserDomainCopyWith<_$_UserDomain> get copyWith =>
      __$$_UserDomainCopyWithImpl<_$_UserDomain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDomainToJson(
      this,
    );
  }
}

abstract class _UserDomain extends UserDomain {
  const factory _UserDomain(
      {required final int id,
      required final String name,
      required final String email,
      required final int role,
      required final int nip,
      required final String accessToken}) = _$_UserDomain;
  const _UserDomain._() : super._();

  factory _UserDomain.fromJson(Map<String, dynamic> json) =
      _$_UserDomain.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  int get role;
  @override
  int get nip;
  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_UserDomainCopyWith<_$_UserDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
