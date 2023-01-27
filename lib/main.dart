import 'package:flutter/material.dart';
import 'package:namer/providers/appstateprovider.dart';
import 'package:namer/screens/homepage.dart';
import 'package:provider/provider.dart';

//main usually used for theme, localization (lanugages), and routing
//keep a short main file
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer Program',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
