import 'dart:io';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

final pdf = pw.Document();

pdfMaker(List dataList) async {
  pdf.addPage(
    pw.Page(
      margin: pw.EdgeInsets.all(10),
      pageFormat: PdfPageFormat.a4,
      orientation: pw.PageOrientation.portrait,
      build: (context) {
        return pw.Center(
          child: pw.Text('Hello World!'),
        );
      },
    ),
  );
  final file = File('example.pdf');
  await file.writeAsBytes(await pdf.save());
  // return await pdf.save();
}
