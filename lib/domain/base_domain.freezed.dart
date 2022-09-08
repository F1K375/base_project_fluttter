// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseDomain<T> {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;
  String get nextPageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseDomainCopyWith<T, BaseDomain<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseDomainCopyWith<T, $Res> {
  factory $BaseDomainCopyWith(
          BaseDomain<T> value, $Res Function(BaseDomain<T>) then) =
      _$BaseDomainCopyWithImpl<T, $Res>;
  $Res call({bool status, String message, T data, String nextPageUrl});
}

/// @nodoc
class _$BaseDomainCopyWithImpl<T, $Res>
    implements $BaseDomainCopyWith<T, $Res> {
  _$BaseDomainCopyWithImpl(this._value, this._then);

  final BaseDomain<T> _value;
  // ignore: unused_field
  final $Res Function(BaseDomain<T>) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? nextPageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BaseDomainCopyWith<T, $Res>
    implements $BaseDomainCopyWith<T, $Res> {
  factory _$$_BaseDomainCopyWith(
          _$_BaseDomain<T> value, $Res Function(_$_BaseDomain<T>) then) =
      __$$_BaseDomainCopyWithImpl<T, $Res>;
  @override
  $Res call({bool status, String message, T data, String nextPageUrl});
}

/// @nodoc
class __$$_BaseDomainCopyWithImpl<T, $Res>
    extends _$BaseDomainCopyWithImpl<T, $Res>
    implements _$$_BaseDomainCopyWith<T, $Res> {
  __$$_BaseDomainCopyWithImpl(
      _$_BaseDomain<T> _value, $Res Function(_$_BaseDomain<T>) _then)
      : super(_value, (v) => _then(v as _$_BaseDomain<T>));

  @override
  _$_BaseDomain<T> get _value => super._value as _$_BaseDomain<T>;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? nextPageUrl = freezed,
  }) {
    return _then(_$_BaseDomain<T>(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      nextPageUrl: nextPageUrl == freezed
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BaseDomain<T> extends _BaseDomain<T> {
  const _$_BaseDomain(
      {required this.status,
      required this.message,
      required this.data,
      required this.nextPageUrl})
      : super._();

  @override
  final bool status;
  @override
  final String message;
  @override
  final T data;
  @override
  final String nextPageUrl;

  @override
  String toString() {
    return 'BaseDomain<$T>(status: $status, message: $message, data: $data, nextPageUrl: $nextPageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseDomain<T> &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(nextPageUrl));

  @JsonKey(ignore: true)
  @override
  _$$_BaseDomainCopyWith<T, _$_BaseDomain<T>> get copyWith =>
      __$$_BaseDomainCopyWithImpl<T, _$_BaseDomain<T>>(this, _$identity);
}

abstract class _BaseDomain<T> extends BaseDomain<T> {
  const factory _BaseDomain(
      {required final bool status,
      required final String message,
      required final T data,
      required final String nextPageUrl}) = _$_BaseDomain<T>;
  const _BaseDomain._() : super._();

  @override
  bool get status;
  @override
  String get message;
  @override
  T get data;
  @override
  String get nextPageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_BaseDomainCopyWith<T, _$_BaseDomain<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
