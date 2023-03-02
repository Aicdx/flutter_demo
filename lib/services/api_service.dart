import 'package:seasun_app/request/apis.dart';
import 'package:seasun_app/request/request_client.dart';
import 'package:get/get.dart';

class ApiService extends GetxService {
  Future login(params, {onError}) {
    return requestClient.post(APIS.login, data: params, onError: onError);
  }
}
