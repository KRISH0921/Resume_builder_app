import 'package:flutter/material.dart';
import 'package:resume_builder_app/home_screen/home_screen.dart';

class OtherActivities extends StatefulWidget {
  const OtherActivities({super.key});

  @override
  State<OtherActivities> createState() => _OtherActivitiesState();
}

class _OtherActivitiesState extends State<OtherActivities> {

  TextEditingController txtActivities = TextEditingController();
  TextEditingController txtcontent = TextEditingController();

  var txtKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        title: Text("Other Activities"),
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
                  padding: const EdgeInsets.only(left: 28,top: 20),
                  child: Text("Title",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: txtActivities,
                  validator: (value) {
                    if (value == "") {
                      return "Please enter your Activities";
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
                    hintText: "Other Activities",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 13),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top:15,left: 28),
                  child: Text("Content",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  controller: txtcontent,
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
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 13
                    ),
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
                        if(dataList != ""){
                          dataList.insert(22,txtActivities.text);
                          dataList.insert(23,txtcontent.text);
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
