
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:thread_clone/routes/routes_names.dart';
import 'package:thread_clone/services/storage_service.dart';
import 'package:thread_clone/services/supabase_service.dart';
import 'package:thread_clone/utils/helper.dart';
import 'package:thread_clone/utils/storage_keys.dart';
import 'package:thread_clone/views/outh/register.dart';

class Outhcontroller extends GetxController{

  var registerLoading = false.obs;

  Future<void> register(String name , String email, String password) async{
    try{
      
       registerLoading.value = true;
      final AuthResponse data = await SupabaseService.client.auth.signUp(
      password: password,
      email: email,
      data: {
        "name":name
      }
    );
    registerLoading.value = false;
    if (data.user != null) {
      StorageService.Session
      .write(StorageKeys.userSession, data.session!.toJson());
      Get.offAllNamed(RouteNames.home);
    }
   } on AuthException catch(error) {
      showSnackBar("Error",error.message);
      
    }
  }
  //* login user
  Future<void> login(String email, String password) async{
    try{
    final AuthResponse response = await SupabaseService.client.auth.signInWithPassword(
      email: email, password: password);
      if (response.user != null) {
      StorageService.Session
      .write(StorageKeys.userSession, response.session!.toJson());
      Get.offAllNamed(RouteNames.home);
     }
    } on AuthApiException catch (error) {
      showSnackBar("Erroe",error.message);
    }
  } 

}