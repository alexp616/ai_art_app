import 'package:flutter/material.dart';
import 'package:ai_art_app/pages/generate_page.dart';


Widget GenerateImageButton(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GeneratePage())),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Flexible(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'generate image'
              )
            )
          )
        )
      )
    )
  );
}