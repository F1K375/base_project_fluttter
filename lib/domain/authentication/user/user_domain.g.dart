// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDomain _$$_UserDomainFromJson(Map<String, dynamic> json) =>
    _$_UserDomain(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as int,
      nip: json['nip'] as int,
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$_UserDomainToJson(_$_UserDomain instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'nip': instance.nip,
      'accessToken': instance.accessToken,
    };
