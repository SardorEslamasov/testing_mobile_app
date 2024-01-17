import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_13/screens/login_screen.dart';
import 'package:lab_13/widgets/custom_textfield.dart';
import 'package:lab_13/widgets/custom_button.dart';

void main() {
  testWidgets('LoginScreen widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));

    expect(find.text('Login'), findsOneWidget);
    expect(find.byType(Icon), findsOneWidget);
    expect(find.byType(CustomTextField), findsNWidgets(2));
    expect(find.byType(CustomButton), findsNWidgets(2));
  });
}
