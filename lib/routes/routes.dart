
import 'package:get/route_manager.dart';
import 'package:thread_clone/routes/routes_names.dart';
import 'package:thread_clone/views/home.dart';
import 'package:thread_clone/views/outh/login.dart';
import 'package:thread_clone/views/outh/register.dart';

class Routes {
  static final Pages = [
    GetPage(name: RouteNames.home, page: () => Home()),
    GetPage(name: RouteNames.login, page: () => Login(),
    transition: Transition.fade),
    GetPage(name: RouteNames.Register, page: () => Register()),
  
  ];
}