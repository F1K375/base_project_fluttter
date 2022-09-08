// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'example_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExampleDomain _$ExampleDomainFromJson(Map<String, dynamic> json) {
  return _ExampleDomain.fromJson(json);
}

/// @nodoc
mixin _$ExampleDomain {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExampleDomainCopyWith<ExampleDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleDomainCopyWith<$Res> {
  factory $ExampleDomainCopyWith(
          ExampleDomain value, $Res Function(ExampleDomain) then) =
      _$ExampleDomainCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$ExampleDomainCopyWithImpl<$Res>
    implements $ExampleDomainCopyWith<$Res> {
  _$ExampleDomainCopyWithImpl(this._value, this._then);

  final ExampleDomain _value;
  // ignore: unused_field
  final $Res Function(ExampleDomain) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_ExampleDomainCopyWith<$Res>
    implements $ExampleDomainCopyWith<$Res> {
  factory _$$_ExampleDomainCopyWith(
          _$_ExampleDomain value, $Res Function(_$_ExampleDomain) then) =
      __$$_ExampleDomainCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_ExampleDomainCopyWithImpl<$Res>
    extends _$ExampleDomainCopyWithImpl<$Res>
    implements _$$_ExampleDomainCopyWith<$Res> {
  __$$_ExampleDomainCopyWithImpl(
      _$_ExampleDomain _value, $Res Function(_$_ExampleDomain) _then)
      : super(_value, (v) => _then(v as _$_ExampleDomain));

  @override
  _$_ExampleDomain get _value => super._value as _$_ExampleDomain;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ExampleDomain(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExampleDomain extends _ExampleDomain {
  const _$_ExampleDomain({required this.id, required this.name}) : super._();

  factory _$_ExampleDomain.fromJson(Map<String, dynamic> json) =>
      _$$_ExampleDomainFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExampleDomain &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_ExampleDomainCopyWith<_$_ExampleDomain> get copyWith =>
      __$$_ExampleDomainCopyWithImpl<_$_ExampleDomain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExampleDomainToJson(
      this,
    );
  }
}

abstract class _ExampleDomain extends ExampleDomain {
  const factory _ExampleDomain(
      {required final int id, required final String name}) = _$_ExampleDomain;
  const _ExampleDomain._() : super._();

  factory _ExampleDomain.fromJson(Map<String, dynamic> json) =
      _$_ExampleDomain.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ExampleDomainCopyWith<_$_ExampleDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
