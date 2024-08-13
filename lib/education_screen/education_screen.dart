import 'package:flutter/material.dart';
import 'package:resume_builder_app/home_screen/home_screen.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  double start = 0.0, end = 0.0;
  String pass = "NON";
  var education = [
    "NON",
    "10th PASS",
    "12th PASS",
    "Graduation",
    "master's",
    "Phd",
  ];
  TextEditingController txtCollege = TextEditingController();
  TextEditingController txtContent = TextEditingController();

  var txtKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        title: Text("Education"),
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
              Align( alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28,top: 25),
                    child: Text("Education",style: TextStyle(fontSize: 18),),
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 15,
                    right: 35,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      isExpanded: true,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      value: pass,
                      items: education.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      onChanged: (String? newValue) {
                        setState(() {
                          pass = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 28),
                  child: Text(
                    "School/College",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: txtCollege,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your school/College";
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
                    hintText: "School name/College name",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 13),

                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 28),
                  child: Text(
                    "Period",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              RangeSlider(
                activeColor: Color(0xff9C28B1),
                values: RangeValues(start, end),
                min: 0,
                max: 5,
                divisions: 5,
                labels: RangeLabels(start.toString(), end.toString()),
                onChanged: (value) {
                  setState(() {
                    start = value.start;
                    end = value.end;
                  });
                },
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 23),
              //   child: TextField(
              //     decoration: InputDecoration(
              //       focusedBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.transparent),
              //       ),
              //       enabledBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.transparent),
              //       ),
              //       hintText: "Period, e,g.May 2020-Present",
              //       hintStyle: TextStyle(color: Colors.grey,fontSize: 13
              //       ),
              //     ),
              //   ),
              // ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Text(
                    "Content",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.done ,
                  maxLines: 5,
                  controller: txtContent,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your Content";
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
                    hintText: "Add your content",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
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
                      if(dataList != ""){
                        if (pass != "NON") {
                          dataList.insert(10,txtCollege.text);
                          dataList.insert(11,end);
                          dataList.insert(12,txtContent.text);
                          Navigator.pushNamed(context, "home");
                        }
                        else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            showCloseIcon: true,
                            duration: Duration(seconds: 3),
                            backgroundColor: Colors.blue,
                            content: Text("Please select Eduction"),
                            behavior: SnackBarBehavior.floating,
                            ),
                          );
                        }
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
