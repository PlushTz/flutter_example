/// Desc:
/// Author: lijt
/// Created on 2025/11/18
/// Email: lijt@eetrust.com
sealed class Result<T> {
  const Result();

  const factory Result.ok(T value) = Ok.ok;

  const factory Result.error(Exception error) = Error.error;
}

final class Ok<T> extends Result<T> {
  const Ok.ok(this.value);

  final T value;

  @override
  String toString() => 'Result<$T>.ok($value)';
}

final class Error<T> extends Result<T> {
  const Error.error(this.error);

  final Exception error;

  @override
  String toString() => 'Result<$T>.error($error)';
}
