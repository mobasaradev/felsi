import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/gen/assets.gen.dart';
import '../../../../../core/service/routes/routes.dart';
import '../../../shared/widgets/external_auth_methods.dart';
import '../../../shared/widgets/linked_text.dart';

part '../widget/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Assets.logo.appLogo.svg(width: 200),
              const SizedBox(height: 32),
              _LoginForm(),
              const SizedBox(height: 32),
              const ExternalAuthMethods(),
              const SizedBox(height: 32.0),
              LinkedText(
                text: "Don't have an account? ",
                btnText: 'Register Here',
                onTap: () => context.pushNamed(Routes.registration),
              )
            ],
          ),
        ),
      ),
    );
  }
}
