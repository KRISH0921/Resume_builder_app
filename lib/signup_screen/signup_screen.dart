import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Create Your account"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Color(0xffF0E4F2),
                    filled: true,
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.person,color: Colors.grey,)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Color(0xffF0E4F2),
                    filled: true,
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.mail,color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Color(0xffF0E4F2),
                    filled: true,
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.password,color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top:15, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Color(0xffF0E4F2),
                    filled: true,
                    focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.password,color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
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
                      "Sign up",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "home");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Or",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFFFBFE),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  border: Border.all(color:Color(0xff9C28B1),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Sign In with Google",
                    style: TextStyle(color: Color(0xff9C28B1),fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already  have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    child: Text(
                      " Login",
                      style: TextStyle(
                          color: Color(0xff9C28B1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap:() {
                      Navigator.pushNamed(context, "login");
                    },
                  ),
                ],
              ),
            )
        
          ],
        ),
      ),
    );
  }
}
