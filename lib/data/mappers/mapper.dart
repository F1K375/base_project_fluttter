
abstract class Mapper<FROM, TO> {
  TO call(FROM? object);
}

abstract class DataMapper<FROM, TO, MAPPER> {
  TO call(FROM base, MAPPER mapper);
}