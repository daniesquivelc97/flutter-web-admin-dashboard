import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/buttons/custom_outlined_button.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:admin_dashboard/ui/inputs/custom_inputs.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 370),
          child: Form(
              child: Column(
            children: [
              // Email
              TextFormField(
                // validator: (value) => ,
                style: const TextStyle(color: Colors.white),
                decoration: CustomInputs.loginInputDecoration(
                  hint: 'Ingrese su e-mail',
                  label: 'Email',
                  icon: Icons.email_outlined,
                ),
              ),
              const SizedBox(height: 20),
              // Password
              TextFormField(
                // validator: (value) => ,
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: CustomInputs.loginInputDecoration(
                  hint: '******',
                  label: 'Contraseña',
                  icon: Icons.lock_outline_rounded,
                ),
              ),
              const SizedBox(height: 20),
              CustomOutlinedButton(
                onPressed: () {},
                text: 'Ingresar',
              ),
              const SizedBox(height: 20),
              LinkText(
                text: 'Nueva cuenta',
                onPressed: () {
                  Navigator.pushNamed(context, Flurorouter.registerRoute);
                },
              )
            ],
          )),
        ),
      ),
    );
  }
}
