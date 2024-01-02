import 'package:currency/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  final homeController = HomeController(toText: toText, fromText: fromText);

  test('Convert Currency', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });
}