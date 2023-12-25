import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/helpers/enums.dart';

part 'remote_response.freezed.dart';

@freezed
class RemoteResponse<T> with _$RemoteResponse<T> {
  const RemoteResponse._();
  const factory RemoteResponse.noConnection() = _NoConnection;
  const factory RemoteResponse.failure(
      String message, bool success, PageStates pageStates) = _Failure;
  const factory RemoteResponse.data(T data) = _Data<T>;
}
