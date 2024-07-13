import 'package:flutter/material.dart';
import 'package:myapp/components/links.dart';
import 'package:myapp/components/textfields.dart';
import './discover_screens.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 70, bottom: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/login-logo.png',
                    width: 120.0,
                  ),
                ],
              ),

              //Text
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  'Login to Your Account',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),

              //TextFields
              MyTextFields(
                mycontroller: emailController,
                hintText: 'Enter email',
                icon: const Icon(Icons.email),
              ),

              //Password TextField
              MyTextFields(
                mycontroller: passController,
                hintText: 'Enter password',
                icon: const Icon(Icons.lock),
              ),

              //button
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 35),
                child: ElevatedButton(
                    onPressed: () {
                      if (emailController.text != "" &&
                          passController.text != "") {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DiscoverScreen()));
                      } else {}
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF246bfd),
                      padding: const EdgeInsets.only(
                          top: 23.0, bottom: 23.0, left: 140, right: 140),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    )),
              ),

              //Text
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: const Text(
                  'Forgot the password ?',
                  style: TextStyle(
                      color: Color(0xFF246bfd), fontWeight: FontWeight.w600),
                ),
              ),

              //Links
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: const Text(
                  'or Continue with',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600),
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Links(color: Colors.blue, icon: Icons.facebook),
                  Links(color: Colors.green, icon: Icons.android),
                  Links(color: Colors.black, icon: Icons.apple),
                ],
              ), //Links end

              Container(
                margin: const EdgeInsets.only(top: 40, bottom: 10),
                child: const Text('Dont have a account?'),
              ),

              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Color(0xFF246bfd), fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
