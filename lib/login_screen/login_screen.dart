import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtPass = TextEditingController();
  TextEditingController txtPass1 = TextEditingController();

  var txtKey = GlobalKey<FormState>();
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SingleChildScrollView(
        child: Form(
          key: txtKey,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 65),
                  child: Text(
                    "Wecolme Back",
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Text(
                "Enter your credential to login",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
                child: TextFormField(
                  controller: txtPass1,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter Username";
                    }
                  },
                  decoration: InputDecoration(
                      fillColor: Color(0xffF0E4F2),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.person, color: Colors.grey)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                child: TextFormField(
                  controller: txtPass,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter valid password";
                    }
                    if (txtPass.text.length <= 7) {
                      return "Please enter max 8 digit password";
                    }
                  },
                    obscureText: show,
                  decoration: InputDecoration(
                    fillColor: Color(0xffF0E4F2),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.password, color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: Icon(show == true ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(
                          () {
                            show = !show;
                          },
                        );
                      },
                      color: Color(0xff9E9E9E),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                child: GestureDetector(
                  child: Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff9C28B1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (txtKey.currentState!.validate()) {
                      Navigator.popAndPushNamed(context, "home");
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: GestureDetector(
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                        color: Color(0xff9C28B1),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "forgot");
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don`t have an account? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    GestureDetector(
                      child: Text(
                        " Sign Up?",
                        style: TextStyle(
                            color: Color(0xff9C28B1),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "sign");
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
