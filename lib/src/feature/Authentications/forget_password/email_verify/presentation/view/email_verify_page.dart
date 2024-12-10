import 'package:felsi/src/core/service/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmailVerifyPage extends StatelessWidget {
  const EmailVerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.pushNamed(Routes.otpVerification),
              child: const Text('Send OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
