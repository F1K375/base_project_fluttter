import 'package:injectable/injectable.dart';

import '../../../../domain/example/example_domain.dart';
import '../../models/response/example/example_response.dart';
import 'example_mapper.dart';
import '../mapper.dart';

@singleton
@Injectable(as: Mapper<List<ExampleResponse>, List<ExampleResponse>>)
class ExampleListMapper
    implements Mapper<List<ExampleResponse>, List<ExampleDomain>> {
  final ExampleMapper mapper;

  ExampleListMapper(this.mapper);

  @override
  List<ExampleDomain> call(List<ExampleResponse>? object) {
    return object?.map((e) => mapper.call(e)).toList() ?? [];
  }
}
