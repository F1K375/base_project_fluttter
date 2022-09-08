import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/base_domain.dart';
import '../../../domain/example/example_domain.dart';
import '../../domain/failure_domain.dart';
import '../mappers/base_mapper.dart';
import '../mappers/example/example_list_mapper.dart';
import '../mappers/example/example_mapper.dart';
import '../models/response/example/example_response.dart';
import '../remotes/example/example_service.dart';
import 'repository_setting.dart';

@injectable
class ExampleRepository extends RepositorySetting {
  final ExampleService service;
  final ExampleMapper mapper;
  final ExampleListMapper listMapper;
  final BaseMapper<ExampleResponse, ExampleDomain> baseMapper = BaseMapper();
  final BaseMapper<List<ExampleResponse>, List<ExampleDomain>> baseListMapper =
      BaseMapper();

  ExampleRepository(this.service, this.mapper, this.listMapper);

  Future<Either<FailureDomain, BaseDomain<ExampleDomain>>> getExample() async {
    final result = await handleResponse<ExampleResponse>(service.exampleGet());

    return result.fold(
        (l) => left(l), (r) => right(baseMapper.call(r, mapper)));
  }

  Future<Either<FailureDomain, BaseDomain<List<ExampleDomain>>>>
      getListExample() async {
    final result =
        await handleResponse<List<ExampleResponse>>(service.exampleGetList());

    return result.fold(
        (l) => left(l), (r) => right(baseListMapper.call(r, listMapper)));
  }
}
