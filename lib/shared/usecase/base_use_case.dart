abstract class BaseUseCase<T> {
  Future<T> execute(dynamic params);
}
