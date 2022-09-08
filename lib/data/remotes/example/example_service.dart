
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:injectable/injectable.dart';

import '../../models/response/base_response.dart';
import '../../models/response/example/example_response.dart';
import '../api_util.dart';

part 'example_service.g.dart';

@injectable
@RestApi()
abstract class ExampleService{
  @factoryMethod
  factory ExampleService(Dio dio) =>
      _ExampleService(dio, baseUrl: ApiUtil.BASE_URL);


  @GET(ApiUtil.example)
  Future<BaseResponse<ExampleResponse>> exampleGet();

  @GET(ApiUtil.example)
  Future<BaseResponse<List<ExampleResponse>>> exampleGetList();
}
