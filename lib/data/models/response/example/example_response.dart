
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_response.g.dart';
part 'example_response.freezed.dart';

@freezed
class ExampleResponse with _$ExampleResponse{

  const factory ExampleResponse({
    int? id,
    String? name
  }) = _ExampleResponse;


  const ExampleResponse._();

  factory ExampleResponse.fromJson(Map<String, dynamic> json) => _$ExampleResponseFromJson(json);
}