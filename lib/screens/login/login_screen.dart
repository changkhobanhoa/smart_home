import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_home/global/global_colors.dart';
import 'package:smart_home/screens/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Sign In',
          style: TextStyle(color: Colors.black, fontSize: 28),
        ),
        shadowColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Sign In",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Looks like you don’t have an account. Let’s create a new account for you.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  height: 1,
                  fontStyle: FontStyle.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Email ",
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
                  contentPadding: const EdgeInsets.all(20),
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
              "Password ",
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
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20),
                  fillColor: Colors.black,
                  focusColor: Colors.black,
                  hoverColor: Colors.black,
                  hintText: "********",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Forgot  Password?",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
              },
              child: Material(
                color: GlobalColors.bgButton,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  width: MediaQuery.sizeOf(context).width,
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            const Row(
              children: [
                Expanded(child: Divider(thickness: 1,)),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Or"),
                ),
                Expanded(child: Divider(thickness: 1,)),

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: GlobalColors.bgGrayLightT,
                  child: InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/icons/facebook.svg",height: 40,),
                    ),
                  ),
                )),
                SizedBox(width: 10,),
                Expanded(child: Material(
                     borderRadius: BorderRadius.circular(10),
                  color: GlobalColors.bgGrayLightT,
                  child: InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/icons/google.svg",height: 40,),
                    ),
                  ),
                ))
              ],
            )
          ],
        ),
      ))),
    );
  }
}
