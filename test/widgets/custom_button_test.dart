import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_13/widgets/custom_button.dart';

void main() {
  testWidgets('CustomButton widget test', (WidgetTester tester) async {
    var pressed = false;
    await tester.pumpWidget(
      MaterialApp(
        home: CustomButton(
          label: 'Test',
          onPressed: () {
            pressed = true;
          },
        ),
      ),
    );

    await tester.tap(find.text('Test'));
    expect(pressed, true);
  });
}
