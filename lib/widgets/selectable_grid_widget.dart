import 'package:flutter/material.dart';

class SelectableGridWidget extends StatefulWidget {
  @override
  _SelectableGridWidgetState createState() => _SelectableGridWidgetState();
}

class _SelectableGridWidgetState extends State<SelectableGridWidget> {
  int selectedIndex = -1;

  void handleSelection(int index) {
    setState(() {
      if (selectedIndex == index) {
        selectedIndex = -1; // Deselect if the same widget is tapped again
      } else {
        selectedIndex = index; // Highlight the selected widget
      }
    });
  }

  Widget buildSelectableWidget(int index) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => handleSelection(index),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.transparent,
            width: 2.0,
          ),
        ),
        child: Center(
          child: Text(
            'Widget $index',
            style: TextStyle(
              color: isSelected ? Colors.blue : Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return GridView.count(
          crossAxisCount: 2,
          children: List.generate(4, (index) => buildSelectableWidget(index)),
        );
      },
    );
  }
}
