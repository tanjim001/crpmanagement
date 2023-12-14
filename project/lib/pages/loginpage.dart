import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:project/pages/constant.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 30),
                height: 350,
                padding: const EdgeInsets.only(top: 50, left: 30),
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset(
                      "images/logo.png", // Replace with your actual image path
                      width: 350,
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 550,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 154, 233, 158),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 30, left: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login to CRP Management",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "please enter your email and password",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: 350,
                        padding: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your email....",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 350,
                        child: PasswordField(
                          backgroundColor: Colors.white,
                          passwordConstraint: r'.*[@$#.*].*',
                          errorMessage:
                              'must contain special character either . * @ # \$',
                          hintText: 'Password',
                          passwordDecoration: PasswordDecoration(
                            inputPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                          ),
                          border: PasswordBorder(
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 0, color: Colors.grey),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 0, color: Colors.grey),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 0, color: Colors.grey),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 6, 123, 10),
                                borderRadius: BorderRadius.circular(10)),
                            alignment: Alignment.center,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "LOGIN",
                                  style: GoogleFonts.sen(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
