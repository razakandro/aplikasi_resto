import 'package:flutter/material.dart';
import 'package:raizak_aplikasi_restoran/tampilanlist.dart';
import 'package:raizak_aplikasi_restoran/tampilangrid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return TampilanList();
        } else if (constraints.maxWidth <= 1200) {
          return TampilanGrid(gridCount: 4);
        } else {
          return TampilanGrid(gridCount: 6);
        }
      },
    );
  }
}

