import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../assets/assets.gen.dart';
import '../constants/colors.dart';
import 'spaces.dart';

class ImagePickerWidget extends StatefulWidget {
  final String label;
  final void Function(XFile? file) onChanged;
  final bool showLabel;

  const ImagePickerWidget({
    super.key,
    required this.label,
    required this.onChanged,
    this.showLabel = true,
  });

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  String? imagePath;

  // Future<String> _saveToAppDir(XFile pickedFile) async {
  //   final appDir = await getApplicationDocumentsDirectory();
  //   final fileName =
  //       "${DateTime.now().millisecondsSinceEpoch}_${pickedFile.name}";

  //   final savedImage = File('${appDir.path}/$fileName');
  //   return (await File(pickedFile.path).copy(savedImage.path)).path;
  // }
  Future<String> _saveToAppDir(XFile file) async {
    final appDir = await getApplicationDocumentsDirectory();
    final fileName = "${DateTime.now().millisecondsSinceEpoch}.jpg";
    final newPath = '${appDir.path}/$fileName';

    // Baca file asli
    final bytes = await file.readAsBytes();
    final originalImage = img.decodeImage(bytes);

    if (originalImage != null) {
      // Target ukuran max untuk sisi terpanjang
      const int maxSize = 400;

      // Hitung orientasi
      final bool isLandscape = originalImage.width >= originalImage.height;

      // Resize sesuai orientasi
      final resized = isLandscape
          ? img.copyResize(
              originalImage,
              width: maxSize,
            )
          : img.copyResize(
              originalImage,
              height: maxSize,
            );

      // Simpan ulang dengan kompresi
      final newFile = File(newPath)
        ..writeAsBytesSync(img.encodeJpg(resized, quality: 80));

      return newFile.path;
    }

    // fallback kalau gagal decode
    await file.saveTo(newPath);
    return newPath;
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final newPath = await _saveToAppDir(pickedFile);
      setState(() {
        imagePath = newPath;
      });
      widget.onChanged(XFile(newPath));
    } else {
      debugPrint('No image selected.');
      widget.onChanged(null);
    }
  }

  Future<void> _pickImageFromCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      final newPath = await _saveToAppDir(pickedFile);
      setState(() {
        imagePath = newPath;
      });
      widget.onChanged(XFile(newPath));
    } else {
      debugPrint('No image selected.');
      widget.onChanged(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.showLabel) ...[
          Text(
            widget.label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SpaceHeight(12.0),
        ],
        Container(
          padding: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: AppColors.primary),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 80.0,
                height: 80.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: imagePath != null
                      ? Image.file(
                          File(imagePath!),
                          fit: BoxFit.cover,
                        )
                      : Container(
                          padding: const EdgeInsets.all(16.0),
                          color: AppColors.black.withOpacity(0.05),
                          child: Assets.icons.image.svg(),
                        ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  width: 70,
                  height: 70,
                  padding: const EdgeInsets.all(2.0),
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image,
                        size: 40.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Galery',
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ),
              const SpaceWidth(16.0),
              GestureDetector(
                onTap: _pickImageFromCamera,
                child: Container(
                  width: 70,
                  height: 70,
                  padding: const EdgeInsets.all(2.0),
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        size: 40.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Camera',
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
