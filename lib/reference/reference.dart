import 'package:flutter/material.dart';
import 'package:resume_builder_app/home_screen/home_screen.dart';

class References extends StatefulWidget {
  const References({super.key});

  @override
  State<References> createState() => _ReferenceState();
}

class _ReferenceState extends State<References> {
  TextEditingController txtName = TextEditingController();
  TextEditingController  txtContactnumber = TextEditingController();
  TextEditingController txtPass2 = TextEditingController();

  var txtKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        title: Text("References"),
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
                padding: const EdgeInsets.only(left: 28,top: 20),
                child: Text("Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,left: 23, right: 20),
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
                  hintText: "References Person Name",
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 13),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top:10,left: 28),
                child: Text("Contact number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,left: 23,right: 20),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                controller:  txtContactnumber,
                validator: (value) {
                  if (value == "") {
                    return "Please enter your  Contact number";
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
                  hintText: "Add your Contact number",
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 13
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
                    if(dataList != ""){
                      dataList.insert(15,txtName.text);
                      dataList.insert(16,txtContactnumber.text);
                      Navigator.pushNamed(context, "home");
                    }
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
