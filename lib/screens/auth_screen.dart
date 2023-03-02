import 'package:flutter/material.dart';

//Widgets
import '../widgets_auth/auth_title_widget.dart';
import '../widgets_auth/auth_form_widget.dart';
import '../widgets_auth/auth_button_widget.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black12,
            Color.fromARGB(255, 53, 18, 94),
            Colors.black,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AuthTitleWidget(),
                const SizedBox(height: 50),
                AuthFormWidget(),
                const SizedBox(height: 50),
                AuthButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
