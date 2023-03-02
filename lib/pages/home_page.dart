import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: () => test(), child: const Text("跳转路由")),
    );
  }

  void test() {
    Get.toNamed('/article', arguments: {"name": "aaaa"});
  }
}
