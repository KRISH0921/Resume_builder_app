import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController txtPass = TextEditingController();

  var txtKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: txtKey,
        child: Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Text("Forgot Your Password?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text("Enter the Email Address associated with",style: TextStyle(color: Colors.black,fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text("your account",style: TextStyle(color: Colors.black,fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
              child: TextFormField(
                controller: txtPass,
                validator: (value) {
                  if (value == "") {
                    return "Please enter Valid Email";
                  }
                },
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
                    prefixIcon: Icon(Icons.email,color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 35, right:60),
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
                      "Verify Email",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                onTap: () {
                  if (txtKey.currentState!.validate()) {
                    Navigator.pushNamed(context, "verify");
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
