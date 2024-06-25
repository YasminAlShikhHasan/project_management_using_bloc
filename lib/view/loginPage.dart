import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectadminstrator_with_state_management/config/constant.dart';

class LogInPage extends StatefulWidget {
  LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController password = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constant.primaryColor,
        body: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 189, left: 36),
              child: Stack(children: [
                Container(
                  width: 288,
                  height: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Constant.thirdColor,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 77, left: 45),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email",
                            style: TextStyle(
                                color: Constant.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 31, right: 31),
                        child: SizedBox(
                          width: 200,
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor: Constant.secondaryColor),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 34, left: 45),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Password",
                            style: TextStyle(
                                color: Constant.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8, left: 31, right: 31),
                        child: SizedBox(
                          width: 200,
                          height: 35,
                          child: TextField(
                            controller: password,
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    Icons.visibility_off,
                                    color: Color.fromARGB(255, 139, 137, 137),
                                  ),
                                ),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor: Constant.secondaryColor),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 50),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.square,
                              color: Color.fromARGB(255, 139, 137, 137),
                            ),
                            Text(
                              "Remember me",
                              style: TextStyle(
                                  color: Constant.primaryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 90),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Constant.forthColor, width: 120),
                        color: Constant.secondaryColor,
                        image: DecorationImage(
                            image: Image.asset('images/beer.png').image,
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(1000)),
                  ),
                )
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 39),
            child: Container(
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Constant.primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                ),
              ),
              width: 283,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Constant.forthColor),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 150, top: 20),
            child: Row(
              children: [
                Text(
                  "Don't have an account ?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Sign Up",
                      style: TextStyle(
                          color: Color(0xffA3F9F9),
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                )
              ],
            ),
          )
        ]));
  }
}
