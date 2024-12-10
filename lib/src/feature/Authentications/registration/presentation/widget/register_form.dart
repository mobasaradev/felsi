part of '../view/registration_page.dart';

class _RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Name',
          ),
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 16.0),
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
        const SizedBox(height: 24.0),
        FilledButton(
          onPressed: () => context.pushNamed(Routes.otpVerification),
          child: const Text('Register with Email'),
        ),
      ],
    );
  }
}
