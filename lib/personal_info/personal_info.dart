import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_country_code_picker/flutter_country_code_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/home_screen/home_screen.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  String email = '';

  String gender = "";
  String dropdown = 'NON';

  String image = "";

  var number = "";
  var city = [
    "NON",
    "Surat",
    "Ahmedabad",
    "Mumbai",
    "Vadodara",
    "Gandhinagar",
    "Delhi",
    "Saputara",
    "Diu",
    "Daman",
    "Patan",
    "Hazira",
  ];
  TextEditingController txtFirstname = TextEditingController();
  TextEditingController txtLastname = TextEditingController();
  TextEditingController txtBrithdate = TextEditingController();
  TextEditingController txtPhonenumber = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtLinkedin = TextEditingController();

  var txtKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        title: Text("Personal Information"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: txtKey,
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment(1, 0.9),
                  children: [
                    Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        image: image == ""
                            ? DecorationImage(
                                image: AssetImage("assets/images/person.png"))
                            : DecorationImage(
                                image: FileImage(File(image)),
                                fit: BoxFit.fill,
                              ),
                        shape: BoxShape.circle,
                        color: Color(0xffD8BFD8),
                      ),
                      // child:,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 500,
                              width: double.infinity,
                              color: Colors.white,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () async {
                                        ImagePicker picker = ImagePicker();
                                        XFile? xFile = await picker.pickImage(
                                            source: ImageSource.camera);
                                        setState(
                                          () {
                                            image = xFile!.path;
                                          },
                                        );
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.photo_camera_outlined,
                                        size: 50,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        ImagePicker picker = ImagePicker();
                                        XFile? xFile = await picker.pickImage(
                                            source: ImageSource.gallery);
                                        setState(() {
                                          image = xFile!.path;
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.photo,
                                        size: 50,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Image(
                        image: AssetImage("assets/images/camera.png"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  maxLength: 15,
                  controller: txtFirstname,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your First name";
                    }
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "First name",
                    hintStyle: TextStyle(color: Color(0xff818589)),
                    labelText: "First name",
                    labelStyle:
                        TextStyle(color: Color(0xff818589), fontSize: 17),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xff818589),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: TextFormField(
                  maxLength: 15,
                  controller: txtLastname,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your Last name";
                    }
                  },
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: "Last name",
                      hintStyle: TextStyle(color: Color(0xff818589)),
                      labelText: "Last name",
                      labelStyle:
                          TextStyle(color: Color(0xff818589), fontSize: 17),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff818589),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  controller: txtBrithdate,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your Birthday";
                    }
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Birthdate",
                    hintStyle: TextStyle(color: Color(0xff818589)),
                    labelText: "Birthdate",
                    labelStyle:
                        TextStyle(color: Color(0xff818589), fontSize: 17),
                    prefixIcon: Icon(
                      Icons.cake_outlined,
                      color: Color(0xff818589),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Text(
                    "Gender",
                    style: TextStyle(color: Color(0xff818589), fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: RadioMenuButton(
                  value: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = "Male";
                    });
                  },
                  groupValue: "Male",
                  child: Text("Male"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: RadioMenuButton(
                  value: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = "Female";
                    });
                  },
                  groupValue: "Female",
                  child: Text("Female"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: IntlPhoneField(
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    maxLength: 10,
                    controller: txtPhonenumber,
                    initialCountryCode: "IN",
                    validator: (data) {
                      return null;
                    },
                    onChanged: (data) {
                      number = data as String;
                      print("number is $data");
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    )),
                    hintText: "Phone number"),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
              //   child: TextFormField(
              //     controller: txtPass4,
              //     validator: (value) {
              //       if (value == "") {
              //         return "Please enter your phone number";
              //       }
              //     },
              //     keyboardType: TextInputType.phone,
              //     decoration: InputDecoration(
              //       focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.all(Radius.circular(10)),
              //       ),
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide(
              //           color: Colors.black,
              //         ),
              //         borderRadius: BorderRadius.all(Radius.circular(10)),
              //       ),
              //       hintText: "Phone number",
              //       hintStyle: TextStyle(color: Color(0xff818589)),
              //       labelText: "Phone number",
              //       labelStyle: TextStyle(color: Color(0xff818589),fontSize: 17),
              //       prefixIcon: Icon(
              //         Icons.phone_iphone_sharp,
              //         color: Color(0xff818589),
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: txtAddress,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your Address";
                    }
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Address",
                    hintStyle: TextStyle(color: Color(0xff818589)),
                    labelText: "Address",
                    labelStyle:
                        TextStyle(color: Color(0xff818589), fontSize: 17),
                    prefixIcon: Icon(
                      Icons.location_city_sharp,
                      color: Color(0xff818589),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: txtEmail,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                    RegExp regExp = RegExp(emailPattern);
                    if (!regExp.hasMatch(value)) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Color(0xff818589)),
                      labelText: "Email",
                      labelStyle:
                          TextStyle(color: Color(0xff818589), fontSize: 17),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff818589),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  controller: txtLinkedin,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your Linkedin";
                    }
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Linkedin",
                    hintStyle: TextStyle(color: Color(0xff818589)),
                    labelText: "Linkedin",
                    labelStyle:
                        TextStyle(color: Color(0xff818589), fontSize: 17),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Image.asset(
                        "assets/images/link.png",
                        height: 10,
                        width: 10,
                      ),
                    ),
                    // contentPadding: EdgeInsets.all(10)
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 15, right: 35),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      isExpanded: true,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      value: dropdown,
                      items: city.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      onChanged: (String? newValue) {
                        setState(
                          () {
                            dropdown = newValue!;
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 10, right: 20, bottom: 20),
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
                        "Save",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (txtKey.currentState!.validate()) {
                      if (gender != "") {
                        if (dataList != "") {
                          if (dropdown != "NON") {
                            if (image != "") {
                              dataList.clear();
                              dataList.insert(0, image);
                              dataList.insert(1, txtFirstname.text);
                              dataList.insert(2, txtLastname.text);
                              dataList.insert(3, txtBrithdate.text);
                              dataList.insert(4, gender);
                              dataList.insert(5, txtPhonenumber.text);
                              dataList.insert(6, txtAddress.text);
                              dataList.insert(7, txtEmail.text);
                              dataList.insert(8, txtLinkedin.text);
                              dataList.insert(9, dropdown);
                              Navigator.pushNamed(context, "maker");
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  showCloseIcon: true,
                                  duration: Duration(seconds: 3),
                                  backgroundColor: Colors.blue,
                                  content: Text("Please take your photo"),
                                  behavior: SnackBarBehavior.floating,
                                ),
                              );
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                showCloseIcon: true,
                                duration: Duration(seconds: 3),
                                backgroundColor: Colors.blue,
                                content: Text("Please select City"),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                          }
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            showCloseIcon: true,
                            backgroundColor: Colors.blue,
                            content: Text("Please select gender"),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
