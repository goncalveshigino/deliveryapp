import 'package:flutter/material.dart';

class RegisterController {
  BuildContext context;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  //Este metodo inicializa todas as variaveis
  Future init(BuildContext context) {
    this.context = context;
  }

  void goToRegisterPage() {
    Navigator.pushNamed(context, 'login');
  }

  void register() {
    String email = emailController.text.trim();
    String name = nameController.text.trim();
    String lasName = lastnameController.text.trim();
    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    print(email);
    print(name);
    print(lasName);
    print(phone);
    print(password);
    print(confirmPassword);
  }
}
