import 'package:arthur_test/features/home/view/home_page.dart';
import 'package:arthur_test/shared/di/app_binder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends GetMaterialApp {
  final pages = [GetPage(name: '/home', page: () => HomePage())];

  MainApp({super.key});

  @override
  String? get initialRoute => '/home';

  @override
  List<GetPage>? get getPages => pages;

  @override
  Bindings? get initialBinding => AppBinder();
}
