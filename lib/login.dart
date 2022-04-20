import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          scrollDirection: Axis.vertical,
          child: Container(
            height: 460,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(width: double.infinity,child: Text("Welcome,", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)), 
                    Container(width: double.infinity, child: Text("Sign in to continue!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),))],
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                        labelText: "Email Id",
                        labelStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(width: 2)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const  BorderSide(
                            color: Color(0xFFfa578e),
                            width: 2
                          )
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                        labelText: "Password",
                        labelStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(width: 2)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const  BorderSide(
                            color: Color(0xFFfa578e),
                            width: 2
                          )
                        )
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          print("It's your busniss");
                        },
                        child: Text("Forget Password?",style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFfa578e)
                      ),
                      onPressed: (() {
                        
                      }), 
                      child: Text("Sign in")),
                    ),
                    Container(
                      width: 300,
                      child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(primary: Color(0xffebeef7)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children : const [
                          Icon(Icons.facebook, color: Colors.blue,),
                          SizedBox(width: 10,),
                         Text("Connect With Facebook", style: TextStyle(color: Colors.blue),)
                          ]
                      )
                    )
                    )],
                )),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("I'm new user,"),
                    TextButton(onPressed: (){}, child: const Text("Sign up", style: TextStyle(color: Color(0xFFfa578e))))
                  ]),
                )
              ],
            ),
          )
        ));
  }
}