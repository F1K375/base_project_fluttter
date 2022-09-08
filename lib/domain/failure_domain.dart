

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_domain.freezed.dart';

@freezed
class FailureDomain with _$FailureDomain {
  const factory FailureDomain.notFound(String message) = _NotFound;
  const factory FailureDomain.unauthorized(String message) = _Unauthorized;
  const factory FailureDomain.serverFailure(String message) = _ServerFailure;
  const factory FailureDomain.unknown(String message) = _Unknown;
}