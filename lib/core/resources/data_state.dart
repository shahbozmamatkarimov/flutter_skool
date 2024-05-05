import '../error/error_response.dart';

abstract class DataState<T> {
  final T? data;
  final ErrorResponse? errorResponse;
  const DataState({this.data, this.errorResponse});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess({required T data}) : super(data: data);
}

class DataError<T> extends DataState<T> {
  const DataError(ErrorResponse errorResponse)
      : super(errorResponse: errorResponse);
}
