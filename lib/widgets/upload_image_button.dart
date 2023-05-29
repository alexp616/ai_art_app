import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart';

class UploadImageButton extends StatefulWidget {
  @override
  final Image selectedImage;
  const UploadImageButton({
    Key? key,
    required this.selectedImage
  }) : super(key: key);

  _UploadImageButtonState createState() => _UploadImageButtonState();
}

class _UploadImageButtonState extends State<UploadImageButton> {
  String? _selectedImagePath;
  late ImageProvider _selectedImageProvider;
  late Image selectedImage;

  void initState() {
    selectedImage = widget.selectedImage;
  }

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _selectedImagePath = pickedImage.path;
        if (kIsWeb) {
          _selectedImageProvider = NetworkImage(_selectedImagePath!);
        } else {
          _selectedImageProvider = FileImage(File(_selectedImagePath!));
        }
        selectedImage = Image(
            image: _selectedImageProvider,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _pickImage(ImageSource.gallery),
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/2,
        child: selectedImage,
      )
    );
  }
}