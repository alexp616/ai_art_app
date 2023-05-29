import 'package:ai_art_app/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ai_art_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Storage>(
          create: (_) => Storage()
            ..listenForAuth()
        ),
      ],
      child: MaterialApp(
        title: 'FlutterFire Samples',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          bottomAppBarTheme: BottomAppBarTheme(color: Colors.grey[900]),
          colorScheme: const ColorScheme.dark().copyWith(
            primary: Colors.blue,
            secondary: Colors.blueAccent,
          )
        ),
        home: LoginPage(),
      )
    );
  }
}