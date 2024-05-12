import 'package:dsa_app/ui/home_view.dart';
import 'package:flutter/material.dart';

class DsaApp extends StatelessWidget {
  const DsaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(title: 'Flutter Demo Home Page'),
    );
  }
}