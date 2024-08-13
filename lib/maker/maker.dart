import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume_builder_app/home_screen/home_screen.dart';

import '../utils/pdf_maker.dart';

class Maker extends StatefulWidget {
  const Maker({super.key});

  @override
  State<Maker> createState() => _MakerState();
}

class _MakerState extends State<Maker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        title: Text("Maker"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          GestureDetector(onTap: () async {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("PDF Save Successfully"),),);
            await Printing.layoutPdf(onLayout: (format) =>
                pdfMaker(dataList)
              ,);
            },child: Icon(Icons.save),
          ),
        ],
      ),


      body: SafeArea(
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text("Name: ${dataList[1]}"),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
