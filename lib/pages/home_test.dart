import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../request/apis.dart';
import '../request/request.dart';
import '../request/request_client.dart';

class HomeTest extends StatelessWidget {
  const HomeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('西山办公'),
      ),
      body: ElevatedButton(
          onPressed: () => getPrams(), child: const Text("获取参数")),
    );
  }

  void getPrams() {
    dynamic args = Get.arguments;
    debugPrint(args.toString());
    login();
  }

  void login() => request(() async {
        const params = {"userName": "xuanquan", "password": "qaz&963@zxc"};
        var user = await requestClient.post(APIS.login, data: params);
        print(user);
      });
}
