import 'package:flutter/material.dart';
import 'package:flutter_showcasebar/src/model.dart';

class ShowcaseController extends ChangeNotifier {
  int currentStep = 0;
  List<ShowcaseStep> steps = [];

  void start(List<ShowcaseStep> showcaseSteps) {
    steps = showcaseSteps;
    currentStep = 0;
    notifyListeners();
  }

  void next() {
    if (currentStep < steps.length - 1) {
      currentStep++;
      notifyListeners();
    }
  }

  void skip() {
    steps.clear();
    notifyListeners();
  }
}