import 'package:flutter/material.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String nombre = '';

  validateForm() {
    if (formKey.currentState!.validate()) {
      print('Form valid... Register');
      print('$email === $password === $nombre');
    } else {
      print('Form not valid');
    }
  }
}
