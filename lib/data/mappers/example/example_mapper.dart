import 'package:injectable/injectable.dart';

import '../../../../domain/example/example_domain.dart';
import '../../models/response/example/example_response.dart';
import '../mapper.dart';

@singleton
@Injectable(as: Mapper<ExampleResponse, ExampleDomain>)
class ExampleMapper implements Mapper<ExampleResponse, ExampleDomain> {
  @override
  ExampleDomain call(ExampleResponse? object) {
    return ExampleDomain(id: object?.id ?? 0, name: object?.name ?? '');
  }
}
