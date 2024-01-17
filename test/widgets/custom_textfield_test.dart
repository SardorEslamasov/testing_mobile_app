import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_13/widgets/custom_textfield.dart';

void main() {
  testWidgets('CustomTextField widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: CustomTextField(label: 'Test')));

    expect(find.text('Test'), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
  });
}
