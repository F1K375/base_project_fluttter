
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_domain.g.dart';
part 'example_domain.freezed.dart';

@freezed
class ExampleDomain with _$ExampleDomain{

  const factory ExampleDomain({
    required int id,
    required String name
  }) = _ExampleDomain;

  const ExampleDomain._();

  factory ExampleDomain.fromJson(Map<String, dynamic> json) => _$ExampleDomainFromJson(json);

  @override
  String toString() {
    return json.encode(toJson());
  }
}