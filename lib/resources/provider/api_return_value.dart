class ApiReturnValue<T> {
  final T? value;
  final String? message;
  final String? success;

  ApiReturnValue({this.message, this.value, this.success});
}
