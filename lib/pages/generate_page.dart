import 'package:ai_art_app/widgets/selectable_grid_widget.dart';
import 'package:flutter/material.dart';
import 'package:ai_art_app/widgets/custom_text_field.dart';

class GeneratePage extends StatefulWidget {
  @override
  _GeneratePageState createState() => _GeneratePageState();
}

class _GeneratePageState extends State<GeneratePage> {
  final inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(controller: inputController),
            SizedBox(
              height: 800, // Adjust the height as per your needs
              child: SelectableGridWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
