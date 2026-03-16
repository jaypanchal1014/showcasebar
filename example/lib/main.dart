import 'package:flutter/material.dart';
import 'package:flutter_showcasebar/flutter_showcasebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ShowcaseController controller = ShowcaseController();

  MyApp({super.key});

  final GlobalKey buttonKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Showcase(
        controller: controller,
        child: HomeScreen(controller: controller, buttonKey: buttonKey),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final ShowcaseController controller;
  final GlobalKey buttonKey;

  const HomeScreen({
    super.key,
    required this.controller,
    required this.buttonKey,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      widget.controller.start([
        ShowcaseStep(
          key: widget.buttonKey,
          title: "Add Item",
          description: "Tap here to add a new item",
        ),
        ShowcaseStep(
          key: widget.buttonKey,
          title: "Second Step",
          description: "This is next step",
        ),
        ShowcaseStep(
          key: widget.buttonKey,
          title: "third Step",
          description: "This is next step",
        ),
        ShowcaseStep(
          key: widget.buttonKey,
          title: "fourth Step",
          description: "This is next step",
        ),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Showcase Demo")),
      floatingActionButton: FloatingActionButton(
        key: widget.buttonKey,
        onPressed: () {
          print("fab working");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
