import 'package:flutter/material.dart';
import 'package:resume_builder_app/home_screen/home_screen.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  String hardskill = "NON", softskill = "NON";
  var hard = [
    "NON",
    "Sales",
    "Programming Language",
    "Data Analysis",
    "Public Speaking",
    "Financial Analysis",
    "Project Management",
    "Video Production",
    "Event Planning",
    "Technical Writing",
    "Statistical Analysis",
    "Business Development",
    "Market Research",
    "Business Strategy",
    "Photography",
  ];
  var soft = [
    "NON",
    "Creativity",
    "Time Management",
    "Communication",
    "Teamwork",
    "Problem-solving",
    "Self-control ",
    "Accepting criticism",
    "Innovation",
    "Motivation",
    "Negotiation",
    "Interpersonal Skills",
    "Work Ethic",
    "Honesty",
    "Quality client service",
  ];

  var txtKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        title: Text("Skill"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Form(
        key: txtKey,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: Text(
                  "Hard Skill",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
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
                    value: hardskill,
                    items: hard.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    onChanged: (String? newValue) {
                      setState(() {
                        hardskill = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 30,
                ),
                child: Text(
                  "Soft Skill",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
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
                    value: softskill,
                    items: soft.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    onChanged: (String? newValue) {
                      setState(() {
                        softskill = newValue!;
                      });
                    },
                  ),
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
                      if (dataList != "") {
                        if (hardskill != "NON") {
                          if (softskill != "NON") {
                            dataList.insert(13, hardskill);
                            dataList.insert(14, softskill);
                            Navigator.pushNamed(context, "home");
                          }
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              showCloseIcon: true,
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.blue,
                              content: Text("Please select Soft skill"),
                              behavior: SnackBarBehavior.floating,
                              ),
                            );
                          }
                        }
                        else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            showCloseIcon: true,
                            duration: Duration(seconds: 2),
                            backgroundColor: Colors.blue,
                            content: Text("Please select Hard skill"),
                            behavior: SnackBarBehavior.floating,
                          ),
                          );
                        }
                      }
                    }
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
