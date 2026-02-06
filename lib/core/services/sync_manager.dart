// import 'dart:async';
// import 'package:connectivity_plus/connectivity_plus.dart';

// import 'sync_service.dart';

// class SyncManager {
//   static final SyncManager _instance = SyncManager._internal();
//   factory SyncManager() => _instance;

//   SyncManager._internal();

//   final SyncService _syncService = SyncService();
//   Timer? _timer;
//   bool _isSyncing = false;

//   /// Jalankan pemantauan koneksi internet
//   void startMonitoring() {
//     Connectivity().onConnectivityChanged.listen((result) {
//       if (result != ConnectivityResult.none) {
//         _scheduleAutoSync();
//       } else {
//         _stopAutoSync();
//       }
//     });
//   }

//   /// Jadwalkan sinkronisasi otomatis setiap 5 menit
//   void _scheduleAutoSync() {
//     _timer ??= Timer.periodic(const Duration(minutes: 1), (timer) async {
//       await _runSync();
//     });
//     _runSync();
//   }

//   /// Hentikan jadwal sinkronisasi
//   void _stopAutoSync() {
//     _timer?.cancel();
//     _timer = null;
//   }

//   /// Jalankan sinkronisasi dua arah dengan proteksi agar tidak dobel
//   Future<void> _runSync() async {
//     if (_isSyncing) return;
//     _isSyncing = true;

//     try {
//       await _syncService.syncTwoWays();
//     } catch (e) {
//       // print("⚠️ Gagal menjalankan sinkronisasi otomatis: $e");
//     } finally {
//       _isSyncing = false;
//     }
//   }
// }
