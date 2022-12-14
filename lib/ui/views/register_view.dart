import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:admin_dashboard/providers/register_form_provider.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/router.dart';
import '../buttons/custom_outlined_button.dart';
import '../buttons/link_text.dart';
import '../inputs/custom_inputs.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegisterFormProvider(),
      child: Builder(builder: (context) {
        final registerFormProvider = Provider.of<RegisterFormProvider>(context);

        return Container(
          margin: const EdgeInsets.only(top: 50),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 370),
              child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: registerFormProvider.formKey,
                  child: Column(
                    children: [
                      // Nombre
                      TextFormField(
                        onChanged: (value) =>
                            registerFormProvider.nombre = value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'El nombre es obligatorio';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.white),
                        decoration: CustomInputs.loginInputDecoration(
                          hint: 'Ingrese su nombre',
                          label: 'Nombre',
                          icon: Icons.supervised_user_circle_sharp,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Email
                      TextFormField(
                        onChanged: (value) =>
                            registerFormProvider.email = value,
                        validator: (value) {
                          if (!EmailValidator.validate(value ?? '')) {
                            return 'Email no valido';
                          }
                          return null;
                        },
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
                        onChanged: (value) =>
                            registerFormProvider.password = value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Ingrese su contrase??a';
                          }
                          if (value.length < 6) {
                            return 'La contrase??a debe de tener al menos 6 caracteres';
                          }
                          return null;
                        },
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        decoration: CustomInputs.loginInputDecoration(
                          hint: '******',
                          label: 'Contrase??a',
                          icon: Icons.lock_outline_rounded,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomOutlinedButton(
                        onPressed: () {
                          final validForm = registerFormProvider.validateForm();
                          if (!validForm) return;
                          final authProvider =
                              Provider.of<AuthProvider>(context, listen: false);
                          authProvider.register(
                            registerFormProvider.email,
                            registerFormProvider.password,
                            registerFormProvider.nombre,
                          );
                        },
                        text: 'Crear cuenta',
                      ),
                      const SizedBox(height: 20),
                      LinkText(
                        text: 'Ir al login',
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, Flurorouter.loginRoute);
                        },
                      )
                    ],
                  )),
            ),
          ),
        );
      }),
    );
  }
}
