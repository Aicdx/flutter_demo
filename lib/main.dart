import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seasun_app/routers/routers.dart';
import 'package:get/get.dart';

import 'navigator/my_navigation_bar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  // 去掉安卓状态栏半透明灰色
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        initialRoute: RouteGet.main,
        getPages: RouteGet.getPages,
        locale: const Locale('zh', 'CN'),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyNavigationBarPage());
  }
}
