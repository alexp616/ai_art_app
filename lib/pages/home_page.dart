import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ai_art_app/widgets/generate_image_button.dart';
import 'package:ai_art_app/widgets/add_image_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            UploadImageButton(context),
            GenerateImageButton(context)
          ]
        )
      )
    );
  }
}