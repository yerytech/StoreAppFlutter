import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormControllers {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController fullNameController;

  FormControllers({
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.fullNameController,
  });
}

final formControllersProvider = StateProvider<FormControllers>((ref) {
  return FormControllers(
    formKey: GlobalKey<FormState>(),
    emailController: TextEditingController(),
    passwordController: TextEditingController(),
    fullNameController: TextEditingController(),
  );
});
