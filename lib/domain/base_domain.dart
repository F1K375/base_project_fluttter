
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_domain.freezed.dart';

@freezed
class BaseDomain<T> with _$BaseDomain<T> {
  const factory BaseDomain({
    required bool status,
    required String message,
    required T data,
    required String nextPageUrl
}) = _BaseDomain;

  bool isNextPageAvailable() {
    return nextPageUrl.isNotEmpty;
}

  const BaseDomain._();
}