import 'package:flutter/material.dart';
import 'package:day2/form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  send() {
    if(formstate.currentState!.validate())
    {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            scrollDirection: Axis.vertical,
            child: Container(
              height: 460,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                          width: double.infinity,
                          child: const Text(
                            "Welcome,",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                      Container(
                          width: double.infinity,
                          child: const Text(
                            "Sign in to continue!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey),
                          ))
                    ],
                  ),
                  Form(
                      key: formstate,
                      child: Column(
                        children: [
                          UnicFormStyle("name"),
                          SizedBox(
                            height: 10,
                          ),
                          UnicFormStyle("email"),
                          SizedBox(
                            height: 10,
                          ),
                          UnicFormStyle("password"),
                          Container(
                            width: double.infinity,
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                print("It's your busniss");
                              },
                              child: Text(
                                "Forget Password?",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFfa578e)),
                                onPressed: send,
                                child: const Text("Sign in")),
                          ),
                          Container(
                              width: 300,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xffebeef7)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.facebook,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Connect With Facebook",
                                          style: TextStyle(color: Colors.blue),
                                        )
                                      ])))
                        ],
                      )),
                  Container(
                    width: double.infinity,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("I'm new user,"),
                          TextButton(
                              onPressed: () {},
                              child: const Text("Sign up",
                                  style: TextStyle(color: Color(0xFFfa578e))))
                        ]),
                  )
                ],
              ),
            )));
  }
}
