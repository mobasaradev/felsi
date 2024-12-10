import 'package:flutter/material.dart';

class ExternalAuthMethods extends StatelessWidget {
  const ExternalAuthMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Divider
        const Text('or', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 32.0),

        ElevatedButton(
          // icon: const Icon(Icons.g_mobiledata),
          child: const Text('Continue with Google'),
          onPressed: () {},
        ),
        const SizedBox(height: 16.0),

        ElevatedButton.icon(
          icon: const Icon(Icons.facebook, size: 24.0),
          label: const Text('Continue with Facebook'),
          onPressed: () {},
        ),
      ],
    );
  }
}
