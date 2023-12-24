import 'package:flutter/material.dart';
import 'package:pedidos_app/screens/sign_up.dart';

import '../styles/global_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_formfield.dart';
import '../widgets/custom_header.dart';
import '../widgets/custom_richtext.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get email => _emailController.text.trim();

  String get password => _passwordController.text.trim();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: GlobalColors.mainColor,
            ),
            CustomHeader(
              text: 'Log In',
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const SignUp()));
              },
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.08,
              left: 10,
              right: 10,
              child: Container(
                margin: const EdgeInsets.only(top: 110),
                height: MediaQuery.of(context).size.height / 2.18,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: GlobalColors.whiteshade,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    CustomFormField(
                      label: "Email",
                      hintText: "Email",
                      suffixIcon: const SizedBox(),
                      controller: _emailController,
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormField(
                      label: "Password",
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      hintText: "At least 8 Character",
                      passwordFiedl: true,

                      controller: _passwordController,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 24),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  color:
                                      GlobalColors.mainColor.withOpacity(0.7),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    AuthButton(
                      onTap: () {},
                      text: 'Sign In',
                    ),
                    CustomRichText(
                      discription: "Don't already Have an account? ",
                      text: "Sign Up",
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
