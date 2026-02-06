// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebViewPage extends StatefulWidget {
//   const WebViewPage({super.key});

//   @override
//   State<WebViewPage> createState() => _WebPrintPageState();
// }

// class _WebPrintPageState extends State<WebViewPage> {
//   late final WebViewController _webController;
//   bool isConnected = true;
//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     _setupWebView();
//     _checkConnection();
//   }

//   Future<void> _checkConnection() async {
//     setState(() {
//       isLoading = true; // Set loading saat mulai cek
//     });

//     try {
//       var connectivityResult = await Connectivity().checkConnectivity();

//       // Handle list result dari connectivity_plus versi baru
//       bool connected;
//       if (connectivityResult is List<ConnectivityResult>) {
//         connected = connectivityResult.any((r) => r != ConnectivityResult.none);
//       } else {
//         connected = connectivityResult != ConnectivityResult.none;
//       }

//       setState(() {
//         isConnected = connected;
//         isLoading = false;
//       });

//       if (connected) {
//         _webController.loadRequest(Uri.parse("https://skops.web.id"));
//       }
//     } catch (e) {
//       setState(() {
//         isConnected = false;
//         isLoading = false;
//       });
//     }
//   }

//   void _setupWebView() {
//     _webController = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..loadRequest(Uri.parse('https://skops.web.id')); // Ganti dengan URL kamu
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
//           child: isLoading
//               ? const Center(child: CircularProgressIndicator())
//               : isConnected
//               ? WebViewWidget(controller: _webController)
//               : Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Icon(Icons.wifi_off, size: 60, color: Colors.grey),
//                       const SizedBox(height: 16),
//                       const Text(
//                         'Tidak ada koneksi internet',
//                         style: TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(height: 16),
//                       IconButton(
//                         color: Colors.red,
//                         icon: const Icon(Icons.refresh, size: 30),
//                         tooltip: 'Reload',
//                         onPressed: _checkConnection,
//                       ),
//                     ],
//                   ),
//                 ),
//           // WebViewWidget(controller: _webController),
//         ),
//       ),
//     );
//   }
// }
