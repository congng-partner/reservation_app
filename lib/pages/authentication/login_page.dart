import 'package:flutter/material.dart';
import 'package:reservation_app/routes/route_named.dart';
import 'package:reservation_app/utils/assets_management.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool checkRememberMe = false;
  final keyOfLogin = GlobalKey<FormState>();
  bool showHideIcon = false;
  bool showHidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFF5F5),
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Form(
              key: keyOfLogin,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 30),
                        child: Image.asset(AssetsManagement.logoWithText),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                                filled: true,
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                hintText: '\t\tPhone number',
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.black54)),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Phone number can\'t be empty';
                              }
                              RegExp phoneNumberExp =
                              RegExp('^[+]?[0-9]{9,15}\$');
                              if (!phoneNumberExp!.hasMatch(value)) {
                                return 'Your number phone is invalid';
                              }
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        showHideIcon = !showHideIcon;
                                        showHidePassword = !showHidePassword;
                                      });
                                    },
                                    icon: Icon(showHideIcon
                                        ? Icons.visibility
                                        : Icons.visibility_off)),
                                filled: true,
                                border: InputBorder.none,
                                fillColor: Colors.white,
                                hintText: '\t\tPassword',
                                hintStyle: const TextStyle(
                                    fontSize: 20, color: Colors.black54)),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password can\'t be empty';
                              }
                              RegExp passwordExp = RegExp(
                                  '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@\$%^&*-]).{8,18}\$');
                              if (!passwordExp!.hasMatch(value)) {
                                return 'Your password phone is invalid';
                              }
                            },
                            obscuringCharacter: '*',
                            obscureText: showHidePassword,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 24,
                                  width: 30,
                                  child: Checkbox(
                                    value: checkRememberMe,
                                    onChanged: (value) {
                                      setState(() {
                                        checkRememberMe = !checkRememberMe;
                                      });
                                    },
                                  ),
                                ),
                                const Text('Remember me',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, RouteNamed.forgotPasswordGetOtpPage);
                              },
                              child: const Text('Forgot password?',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF9D170F),
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xFF9D170F))),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 8, right: 8, bottom: 8),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.white,
                          child: ElevatedButton(
                              onPressed: () {
                                keyOfLogin.currentState!.validate();
                                if (keyOfLogin.currentState!.validate() ==
                                    true) {
                                  // Navigator.pushNamed(
                                  //     context, PageName.loggedInPage);
                                }
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    ContinuousRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(25))),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF9D170F)),
                              ),
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RouteNamed.signUpPage);
                          },
                          child: const Text(
                            'New here? Register',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF9D170F),
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFF9D170F)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}