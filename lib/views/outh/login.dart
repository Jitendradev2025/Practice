
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:thread_clone/routes/routes_names.dart';
import 'package:thread_clone/widgets/auth_input.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _Form = GlobalKey<FormState>();
  final TextEditingController emailcontroller =
   TextEditingController(text: "");
   final TextEditingController Passwordcontroller =
   TextEditingController(text: "");
   // * Sumbit method
   void Sumbit () {
    if(_Form.currentState!.validate()){
      print("All good");
    }
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding:const EdgeInsets.all(10.0),
            child: Form(
              key: _Form,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 60,
                    width: 60,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    Text(
                      "welcome back"
                    ),
                     
                      ],
                    ),
                  ),
                 const SizedBox(height: 20),
                 AuthInput(
                  lable: "Email",
                  hintText: "Enter your email",
                  controller: emailcontroller, validator: null,
                   validatorCallback: ValidationBuilder()
                  .email().
                  build(),
                  
                 ),
                 SizedBox(height: 20),
                 AuthInput(
                  lable: "Password",
                  hintText: "Enter your password",
                  controller: Passwordcontroller,
                  isPasswordField: true, validator: null,
                   validatorCallback: ValidationBuilder()
                  .required().
                  build(),
                 ),
                 SizedBox(height: 20),
                 ElevatedButton(onPressed: Sumbit,
                 style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                   const Size.fromHeight(40),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                 ),
                  child: Text("Sumbit")
                  ),
                  const SizedBox(height: 20),
                  Text.rich(TextSpan(children: [
                    TextSpan(text: "Sign up",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () => Get.toNamed(RouteNames.Register),
                    ) ,
                     ],
                    text: "Don't have an account")),
                ],
              ),
            ),
          ),
      )),
    );
  }
}