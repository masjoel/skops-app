// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


// class PdfViewerPage extends StatefulWidget {
//   const PdfViewerPage({super.key});

//   @override
//   State<PdfViewerPage> createState() => _PdfViewerPageState();
// }

// class _PdfViewerPageState extends State<PdfViewerPage> {
//   String? pdfPath;

//   @override
//   void initState() {
//     super.initState();
//     _generatePdfAndSave();
//   }

//   Future<void> _generatePdfAndSave() async {
//     final pdf = pw.Document();

//     // Sample PDF creation with one page
//     pdf.addPage(
//       pw.Page(
//         build: (pw.Context context) {
//           return pw.Center(
//             child: pw.Text('Hello World'),
//           );
//         },
//       ),
//     );

//     // Save the PDF
//     final output = await getTemporaryDirectory();
//     final file = File("${output.path}/orders.pdf");
//     await file.writeAsBytes(await pdf.save());

//     // Set the path for the viewer
//     setState(() {
//       pdfPath = file.path;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('PDF Viewer'),
//       ),
//       body: pdfPath == null
//           ? const Center(child: CircularProgressIndicator())
//           : SfPdfViewer.file(File(pdfPath!)),
//     );
//   }
// }
