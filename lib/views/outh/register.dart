
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:thread_clone/controllers/outhcontroller.dart';
import 'package:thread_clone/routes/routes_names.dart';
import 'package:thread_clone/widgets/auth_input.dart';
class Register extends StatefulWidget {
  const Register ({super.key});

  @override
  State<Register> createState() => _LoginState();
}

// 6FWn0eXmHq6tQpWx

class _LoginState extends State<Register> {
  final GlobalKey<FormState> _Form = GlobalKey<FormState>();
  final TextEditingController emailcontroller =
   TextEditingController(text: "");
   final TextEditingController Passwordcontroller =
   TextEditingController(text: "");
   final TextEditingController namecontroller =
   TextEditingController(text: "");
   final TextEditingController cPasswordcontroller =
   TextEditingController(text: "");
   final Outhcontroller controller = Get.put(Outhcontroller());

   // * Sumbit method
   void Sumbit () {
    if(_Form.currentState!.validate()){
      controller.register(namecontroller.text, emailcontroller.text, Passwordcontroller.text);
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
                          "register",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    Text(
                      "welcome to the threads clone"
                    ),
                     
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  AuthInput(
                  lable: "Name",
                  hintText: "Enter your Name",
                  controller: namecontroller,
                  validatorCallback: ValidationBuilder()
                  .required()
                  .minLength(3)
                  .maxLength(50)
                  .build(), validator: null,

                 ),
                 const SizedBox(height: 20),
                 AuthInput(
                  lable: "Email",
                  hintText: "Enter your email",
                  controller: emailcontroller,
                  validatorCallback: ValidationBuilder()
                  .required()
                  .email().
                  build(), validator: null,
                 ),
                 SizedBox(height: 20),
                 AuthInput(
                  lable: "Password",
                  hintText: "Enter your password",
                  controller: Passwordcontroller,
                  isPasswordField: true,
                  validatorCallback: ValidationBuilder()
                  .required()
                  .minLength(6)
                  .maxLength(50)
                  .build(), validator: null,
                 ),
                 const SizedBox(height: 20),
                 AuthInput(
                  lable: "Confirm Password",
                  hintText: "Enter your confirm password",
                  isPasswordField: true,
                  controller: cPasswordcontroller,
                  validatorCallback: (arg)  {
                    if(Passwordcontroller.text!=arg){
                      return "Conform password not matched";
                    }
                    return null;
                  }, validator: null,
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
                    TextSpan(text: "Login",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () => Get.toNamed(RouteNames.login),
                    ) ,
                     ],
                    text: "Already have an account")),
                ],
              ),
            ),
          ),
      )),
    );
  }
  
  
}
