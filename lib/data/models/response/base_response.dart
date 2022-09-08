
import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/base_domain.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T>{

  @JsonKey(name: "ok")
  final bool? status;
  final String? message;
  final T? data;
  @JsonKey(name: 'next_page_url') final String? nextPageUrl;

  BaseResponse({required this.status,this.message,this.data, this.nextPageUrl});

  BaseDomain<U> toDomain<U>(U domainData) {
    return BaseDomain<U>(
        status: status ?? false,
        message: message ?? "",
        data: domainData,
        nextPageUrl: nextPageUrl ?? ""
    );
  }

  factory BaseResponse.fromJson(Map<String, dynamic> json, dynamic generic) => _$BaseResponseFromJson(json, generic);

  factory BaseResponse.errorHandler(Map<String, dynamic> json) => BaseResponse<T>(
    status: json['ok'] as bool?,
    message: json['message'] as String?,
    data: null,
    nextPageUrl: json['next_page_url'] as String?,
  );

  Map<String, dynamic>? toJson(T) => _$BaseResponseToJson(this, (T));

}