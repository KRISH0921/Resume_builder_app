import 'package:flutter/material.dart';
import 'package:resume_builder_app/home_screen/home_screen.dart';

class WorkExperience extends StatefulWidget {
  const WorkExperience({super.key});

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  double start = 0.0, end = 0.0;

  TextEditingController txtExperience = TextEditingController();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtCompany = TextEditingController();
  TextEditingController txtContent = TextEditingController();

  var txtKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        title: Text("Work Experience"),
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
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28, top: 20),
                  child: Text(
                    "Title",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: txtExperience,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your Experience";
                    }
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Work Experience",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 28),
                  child: Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: txtName,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your Name";
                    }
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Senior Manager",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 28),
                  child: Text(
                    "Company",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: txtCompany,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your Company name";
                    }
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Subtitle(Compulsory)",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 28),
                  child: Text(
                    "Period",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
              RangeSlider(
                activeColor: Color(0xff9C28B1),
                values: RangeValues(start, end),
                min: 0,
                max: 10,
                divisions: 10,
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
              //       hintText: " e,g.May 2017-Present",
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
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 23,right: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  controller: txtContent,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your Content";
                    }
                  },
                  maxLines: 10,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Add your content",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20,bottom: 20),
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
                      if (dataList != ""){
                        dataList.insert(17,txtExperience.text);
                        dataList.insert(18,txtName.text);
                        dataList.insert(19,txtCompany.text);
                        dataList.insert(20,end);
                        dataList.insert(21,txtContent.text);
                        Navigator.pushNamed(context, "home");
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
