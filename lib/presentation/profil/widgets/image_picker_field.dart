import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/colors.dart';

class ImagePickerField extends StatefulWidget {
  final String title;
  final String prefKey;
  final bool isCircle; // true kalau mau ditampilkan CircleAvatar (foto profil)
  final ValueChanged<File?>? onImagePicked;

  const ImagePickerField({
    super.key,
    required this.title,
    required this.prefKey,
    this.isCircle = false,
    this.onImagePicked,
  });

  @override
  State<ImagePickerField> createState() => _ImagePickerFieldState();
}

class _ImagePickerFieldState extends State<ImagePickerField> {
  File? _savedImage;

  @override
  void initState() {
    super.initState();
    _loadImageFromPrefs();
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      final imageFile = File(pickedFile.path);
      final appDir = await getApplicationDocumentsDirectory();
      final fileName =
          '${widget.prefKey}_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final savedImagePath = '${appDir.path}/$fileName';
      final savedImage = await imageFile.copy(savedImagePath);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(widget.prefKey, savedImagePath);

      if (widget.onImagePicked != null) {
        widget.onImagePicked!(savedImage);
      }

      setState(() {
        _savedImage = savedImage;
      });
    }
  }

  Future<void> _loadImageFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final savedImagePath = prefs.getString(widget.prefKey);

    if (savedImagePath != null && File(savedImagePath).existsSync()) {
      final imageFile = File(savedImagePath);
      if (widget.onImagePicked != null) {
        widget.onImagePicked!(imageFile);
      }
      setState(() {
        _savedImage = imageFile;
      });
    } else {
      // Notify parent no image is selected if pref is empty
      if (widget.onImagePicked != null) {
        widget.onImagePicked!(null);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
          child: Text(widget.title,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: AppColors.primary),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _savedImage != null
                  ? widget.isCircle
                      ? CircleAvatar(
                          backgroundImage: FileImage(_savedImage!),
                          radius: 40,
                        )
                      : Image.file(_savedImage!, height: 70)
                  : widget.isCircle
                      ? const CircleAvatar(
                          radius: 40,
                          child: Icon(Icons.person, size: 40),
                        )
                      : const Text("no image"),
              GestureDetector(
                onTap: () => _pickImage(ImageSource.gallery),
                child: Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.all(2.0),
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.image, size: 30.0, color: Colors.white),
                      Text('Galery',
                          style:
                              TextStyle(color: Colors.white, fontSize: 12.0)),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _pickImage(ImageSource.camera),
                child: Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.all(2.0),
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt_outlined,
                          size: 30.0, color: Colors.white),
                      Text('Camera',
                          style:
                              TextStyle(color: Colors.white, fontSize: 12.0)),
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
