import 'package:flutter/material.dart';

class UnicFormStyle extends StatelessWidget {
  String? type;
  UnicFormStyle(this.type);

  checkUserName(String? value) {
    if (value!.isEmpty) return "This Feild is Empty";
    if (value.length > 10) {
      return "Your Name is Larger";
    } else if (value.length < 4) {
      return "Your Name is Smaller";
    } else {
      return null;
    }
  }

  checkEmail(String? value) {
    if (value!.isEmpty) return "This Feild is Empty";
    int i;
    for (i = 0; i < value.length; i++) {
      if (value[i] == '@') return null;
    }
    return "This is Invalid Email";
  }

  checkPassword(String? value) {
    int i;
    bool upper = false;

    if (value!.isEmpty)
      return "This Feild is Empty";
    else if (value.length < 4)
      return "Your Password is to Short";
    else if (value.length > 10)
      return "Your Password is to Long";
    else if (!value.contains(RegExp(r'[A-Z]'))) {
      return "You Must at lest 1 Uppercase Letter";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: type == "password" ? true : false,
      validator: (value) => type == "name"
          ? checkUserName(value)
          : type == "email"
              ? checkEmail(value)
              : type == "password"
                  ? checkPassword(value)
                  : null,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(
          suffixIcon: type == "email"
              ? const Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 16,
                )
              : type == "password"
                  ? const Icon(
                      Icons.key,
                      color: Colors.black,
                      size: 16,
                    )
                  : type == "name"
                      ? const Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 16,
                        )
                      : null,
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          labelText: type == "email"
              ? "Email Id"
              : type == "password"
                  ? "Password"
                  : type == "name"
                      ? "User Name"
                      : null,
          labelStyle: const TextStyle(color: Colors.grey),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 2, color: Colors.red),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:
                  const BorderSide(color: Color(0xFFfa578e), width: 2))),
    );
  }
}
