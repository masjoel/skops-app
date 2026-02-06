// import 'dart:typed_data';
// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';

// import 'package:share_plus/share_plus.dart';

// class TextToImageShare extends StatefulWidget {
//   @override
//   _TextToImageShareState createState() => _TextToImageShareState();
// }

// class _TextToImageShareState extends State<TextToImageShare> {
//   final GlobalKey _globalKey = GlobalKey();

//   Future<void> _captureAndSharePng() async {
//     final messenger = ScaffoldMessenger.of(context);
//     try {
//       RenderRepaintBoundary boundary = _globalKey.currentContext!
//           .findRenderObject() as RenderRepaintBoundary;
//       ui.Image image = await boundary.toImage(pixelRatio: 3.0);
//       ByteData? byteData =
//           await image.toByteData(format: ui.ImageByteFormat.png);
//       if (byteData != null) {
//         final buffer = byteData.buffer;
//         String dir = (await getTemporaryDirectory()).path;
//         File imgFile = File('$dir/text_image.png');
//         await imgFile.writeAsBytes(buffer.asUint8List());

//         // Share the image via WhatsApp
//         _shareImage(imgFile.path);
//       }
//     } catch (e) {
//       messenger.showSnackBar(
//         const SnackBar(
//           content: Text("Terjadi kesalahan saat proses konversi menjadi gambar."),
//         ),
//       );
//     }
//   }

//   Future<void> _shareImage(String filePath) async {
//     // Gunakan package "share_plus" untuk berbagi gambar
//     final messenger = ScaffoldMessenger.of(context);
//     try {
//       await Share.shareXFiles([XFile(filePath)], text: "Lihat ini!");
//     } catch (e) {
//       messenger.showSnackBar(
//         const SnackBar(
//           content: Text("Terjadi kesalahan saat berbagi. Coba lagi."),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Text to Image")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RepaintBoundary(
//               key: _globalKey,
//               child: Container(
//                 color: Colors.white,
//                 padding: const EdgeInsets.all(20),
//                 child: const Text(
//                   "Ini adalah teks yang akan dikonversi menjadi gambar.",
//                   style: TextStyle(fontSize: 20, color: Colors.black),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _captureAndSharePng,
//               child: const Text("Konversi dan Bagikan"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
