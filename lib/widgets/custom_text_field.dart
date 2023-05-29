import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {

  final TextEditingController controller;
  const CustomTextField({
    Key? key,
    required this.controller
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
      child: SingleChildScrollView(
        child: TextField(
          controller: widget.controller,
          decoration: const InputDecoration(
            hintText: 'Enter text',
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none
          ),
          style: TextStyle(color: Colors.white),
          maxLines: null,
        ),
      )
    );
  }
}