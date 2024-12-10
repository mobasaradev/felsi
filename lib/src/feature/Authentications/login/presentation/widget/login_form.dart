part of '../view/login_page.dart';

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16.0),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
          obscureText: true,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () => context.pushNamed(Routes.emailVerification),
            child: const Text("Forget Password"),
          ),
        ),
        const SizedBox(height: 16.0),
        FilledButton(
          onPressed: () => context.pushReplacementNamed(Routes.dashboard),
          child: const Text('Login with Email'),
        ),
      ],
    );
  }
}
