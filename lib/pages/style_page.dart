import 'package:flutter/material.dart';
import 'package:ai_art_app/widgets/upload_image_button.dart';

class StylePage extends StatefulWidget {
  final Image initImage;

  const StylePage({
    Key? key,
    required this.initImage
  }) : super(key: key);

  @override
  _StylePageState createState() => _StylePageState();
}

class _StylePageState extends State<StylePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UploadImageButton(selectedImage: widget.initImage),

          ],
        )
      )
      
    );
  }
}