import 'package:flutter/material.dart';
import 'package:flutter_showcasebar/flutter_showcasebar.dart';

class ShowcaseOverlay extends StatelessWidget {
  final ShowcaseController controller;

  const ShowcaseOverlay({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final step = controller.steps[controller.currentStep];

    return Stack(
      children: [
        /// dark overlay (tap pass through)
        IgnorePointer(ignoring: true, child: Container(color: Colors.black54)),

        /// tooltip card (clickable)
        Positioned(
          bottom: 150,
          left: 40,
          right: 40,
          child: Material(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    step.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(step.description),

                  const SizedBox(height: 15),

                  ElevatedButton(
                    onPressed: controller.next,
                    child: const Text("Next"),
                  ),

                  TextButton(
                    onPressed: controller.skip,
                    child: const Text("Skip"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
