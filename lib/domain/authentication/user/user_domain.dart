import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_domain.freezed.dart';
part 'user_domain.g.dart';

@freezed
class UserDomain with _$UserDomain {
  const factory UserDomain(
      {required int id,
      required String name,
      required String email,
      required int role,
      required int nip,
      required String accessToken}) = _UserDomain;

  const UserDomain._();

  factory UserDomain.fromJson(Map<String, dynamic> json) =>
      _$UserDomainFromJson(json);

  @override
  String toString() {
    return json.encode(toJson());
  }
}
