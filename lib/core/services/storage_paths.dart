import 'dart:io';
import 'package:path_provider/path_provider.dart';

class KasirLapakDirs {
  final Directory root;
  final Directory backup;
  final Directory exportRoot;
  final Directory exportPdf;
  final Directory exportExcel;

  KasirLapakDirs({
    required this.root,
    required this.backup,
    required this.exportRoot,
    required this.exportPdf,
    required this.exportExcel,
  });
}

Future<KasirLapakDirs> ensureKasirLapakDirs() async {
  Directory base;
  if (Platform.isAndroid) {
    base = (await getExternalStorageDirectory())!;
  } else if (Platform.isIOS || Platform.isMacOS) {
    base = await getApplicationDocumentsDirectory();
  } else if (Platform.isWindows || Platform.isLinux) {
    base = await getApplicationSupportDirectory();
  } else {
    base = await getTemporaryDirectory();
  }

  final root = Directory('${base.path}/KasirLapak');
  final backup = Directory('${root.path}/Backup');
  final exportRoot = Directory('${root.path}/Export');
  final exportPdf = Directory('${exportRoot.path}/PDF');
  final exportExcel = Directory('${exportRoot.path}/Excel');

  for (final d in [root, backup, exportRoot, exportPdf, exportExcel]) {
    if (!await d.exists()) {
      await d.create(recursive: true);
    }
  }

  return KasirLapakDirs(
    root: root,
    backup: backup,
    exportRoot: exportRoot,
    exportPdf: exportPdf,
    exportExcel: exportExcel,
  );
}
