import 'package:flutter/material.dart';

List dataList =[
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool dd = true;
  bool check = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Resume builder"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(child: Text("item1")),
            PopupMenuItem(child: Text("item1")),
            PopupMenuItem(child: Text("item1")),
            PopupMenuItem(child: Text("item1")),
            PopupMenuItem(child: Text("item1")),
            PopupMenuItem(child: Text("item1")),
            PopupMenuItem(child: Text("item1")),
          ],)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
              child: GestureDetector(
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffD8BFD8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        "Personal information",
                        style: TextStyle(
                            color: Color(0xff818589),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff818589),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "info");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: GestureDetector(
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffD8BFD8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        "Education",
                        style: TextStyle(
                            color: Color(0xff818589),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff818589),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "educ");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: GestureDetector(
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffD8BFD8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        "Skill",
                        style: TextStyle(
                            color: Color(0xff818589),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff818589),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "skill");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: GestureDetector(
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffD8BFD8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        "Reference",
                        style: TextStyle(
                            color: Color(0xff818589),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff818589),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "references");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: GestureDetector(
                child: Flexible(
                  flex: 1,
                  child: Container(
                    height: 44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffD8BFD8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Text(
                          "Work Experience",
                          style: TextStyle(
                              color: Color(0xff818589),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff818589),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "work");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: GestureDetector(
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffD8BFD8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(
                        "Other Activities",
                        style: TextStyle(
                            color: Color(0xff818589),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff818589),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "other");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 60, right: 20),
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
                      "Maker",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "maker");
                },
              ),
            ),
            SizedBox(height: 20,),
            Switch(
              activeColor: Color(0xff9C28B1),
              value: dd, onChanged:
            (value) {
            setState(() {
            dd = value;
                   }
                );
              },
            ),
            Padding (
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: CheckboxListTile(
                activeColor: Color(0xff9C28B1),
                value: check, onChanged: (value) {
                setState(() {
                  check = value!;
                    }
                  );
                },title: Text("Select"),),
            ),
          ],
        ),
      ),
    );
  }
}
