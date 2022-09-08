
import '../../../domain/base_domain.dart';
import '../models/response/base_response.dart';
import 'mapper.dart';

class BaseMapper<T , U> implements DataMapper<BaseResponse<T>, BaseDomain<U>, Mapper<T, U>> {

  @override
  BaseDomain<U> call(BaseResponse<T> base, Mapper<T, U> mapper) {
    return BaseDomain<U>(
        status: base.status ?? false,
        message: base.message ?? "",
        data: mapper.call(base.data),
        nextPageUrl: base.nextPageUrl ?? "");
  }
}
