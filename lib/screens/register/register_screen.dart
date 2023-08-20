import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_home/global/global_colors.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late bool _isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text("Sign Up",
            style: TextStyle(
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Create Account",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Looks like you don’t have an account. Let’s create a new account for you.",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      height: 1,
                      fontStyle: FontStyle.normal),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Full Name ",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                  keyboardAppearance: Brightness.light,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    hintText: "tomas257@gmail.com",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Email",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                  keyboardAppearance: Brightness.light,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    hintText: "tomas257@gmail.com",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Phone ",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                  keyboardAppearance: Brightness.light,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    hintText: "+846656",
                    suffixIcon: const Icon(Icons.close),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                  keyboardAppearance: Brightness.light,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    hintText: "Password",
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                      value: _isCheck,
                      onChanged: (value) {
                        setState(() {
                          _isCheck = value!;
                        });
                      }),
                  const Text("I accept terms & conditions"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Material(
                color: GlobalColors.bgButton,
                borderRadius: BorderRadius.circular(10),
                child: GestureDetector(
                  onTap: () {
                    Dialogs.materialDialog(
                      lottieBuilder: Lottie.asset(
                        'assets/animation_success.json',
                        fit: BoxFit.contain,
                      ),
                      color: Colors.white,
                      msg: 'You have created your account',
                      title: 'Congratulation!',
                      msgAlign: TextAlign.center,
                      msgStyle: const TextStyle(fontSize: 18),
                      titleStyle: const TextStyle(
                          color: GlobalColors.bgButton,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                      dialogWidth: 0.3,
                      context: context,
                      actions: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 60,
                            decoration: BoxDecoration(
                                color: GlobalColors.bgButton,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    width: MediaQuery.sizeOf(context).width,
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
