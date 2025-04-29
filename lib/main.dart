import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thread_clone/routes/routes.dart';
import 'package:thread_clone/routes/routes_names.dart';
import 'package:thread_clone/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      getPages: Routes.Pages,
      initialRoute: RouteNames.login,
      defaultTransition: Transition.noTransition,
    );
  }
}
