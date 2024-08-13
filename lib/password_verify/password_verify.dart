import 'package:flutter/material.dart';

class PasswordVerify extends StatefulWidget {
  const PasswordVerify({super.key});



  @override
  State<PasswordVerify> createState() => _PasswordVerifyState();
}

class _PasswordVerifyState extends State<PasswordVerify> {

  TextEditingController txtPass = TextEditingController();
  TextEditingController txtPass1 = TextEditingController();


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
                child: Text("Frome previous used password",style: TextStyle(color: Colors.black,fontSize: 18),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
              child: TextFormField(
                controller: txtPass,
                validator: (value) {

                  if (value == "") {
                    return "Please enter New password";
                  }
                  if (txtPass.text.length <= 7) {
                    return "Please enter 8 digit password";
                  }
                },
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
                    hintText: "New Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.password,color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
              child: TextFormField(
                controller: txtPass1,
                validator: (value) {

                  if (value == "") {
                    return "Please enter Confirm password";
                  }
                  if (txtPass1.text.length <= 7) {
                    return "Please enter Right password";
                  }
                },
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
                    hintText: "Confirm New Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.password,color: Colors.grey)),
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
                      "Forgot Password",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                onTap: () {
                  if (txtKey.currentState!.validate()) {
                    Navigator.pushNamed(context, "login");
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
