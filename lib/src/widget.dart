import 'package:flutter/material.dart';
import 'package:flutter_showcasebar/src/controller.dart';
import 'package:flutter_showcasebar/src/overlay.dart';

class Showcase extends StatefulWidget {
  final Widget child;
  final ShowcaseController controller;

  const Showcase({super.key, required this.child, required this.controller});

  @override
  State<Showcase> createState() => _ShowcaseState();
}

class _ShowcaseState extends State<Showcase> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_update);
  }

  void _update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        if (widget.controller.steps.isNotEmpty)
          ShowcaseOverlay(controller: widget.controller),
      ],
    );
  }
}
