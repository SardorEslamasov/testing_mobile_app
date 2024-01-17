import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_13/screens/reg_screen.dart';
import 'package:lab_13/widgets/custom_textfield.dart';

void main() {
  testWidgets('RegistrationScreen widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: RegistrationScreen()));

    expect(find.text('Registration'), findsOneWidget);
    expect(find.byType(CustomTextField), findsNWidgets(4));
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
