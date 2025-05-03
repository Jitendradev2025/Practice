// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:thread_clone/routes/routes.dart';
// import 'package:thread_clone/routes/routes_names.dart';
// import 'package:thread_clone/theme/theme.dart';

// import 'package:thread_clone/utils/env.dart';


// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   await dotenv.load(fileName: ".env");
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: theme,
//       getPages: Routes.Pages,
//       initialRoute: RouteNames.login,
//       defaultTransition: Transition.noTransition,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:thread_clone/routes/routes.dart';
import 'package:thread_clone/routes/routes_names.dart';
import 'package:thread_clone/theme/theme.dart';
import 'package:thread_clone/utils/env.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await GetStorage.init(); // ✅ Make sure .env exists in project root
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
