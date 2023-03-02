import 'package:seasun_app/request/exception.dart';
import 'package:seasun_app/request/exception_handler.dart';
import 'package:seasun_app/utils/loading.dart';

Future request(
  Function() block, {
  bool showLoading = true,
  bool Function(ApiException)? onError,
}) async {
  try {
    await loading(block, isShowLoading: showLoading);
  } catch (e) {
    // handleException(ApiException.from(e), onError: onError);
  }
  return;
}
