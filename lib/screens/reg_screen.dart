import 'package:flutter/material.dart';
import 'package:lab_13/widgets/custom_textfield.dart';
import 'main_screen.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(label: 'First Name'),
          CustomTextField(label: 'Last Name'),
          CustomTextField(label: 'Email'),
          CustomTextField(label: 'Password', isPassword: true),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MainScreen()), // Use MaterialPageRoute to push the MainScreen
              );
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}
