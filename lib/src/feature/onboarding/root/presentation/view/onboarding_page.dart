import 'package:felsi/src/core/service/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../riverpod/onboarding_provider.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingControllerProvider);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Keep you in memories\nWith Felsi.',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Image.network(
                  "https://cdni.iconscout.com/illustration/premium/thumb/girl-clicking-selfie-with-teddy-illustration-download-in-svg-png-gif-file-formats--woman-taking-hand-gesture-photographer-pack-people-illustrations-4234775.png?f=webp"),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: state.isLoading
                    ? null
                    : () async {
                        await ref
                            .read(onboardingControllerProvider.notifier)
                            .completeOnboarding();

                        if (!state.hasError) {
                          context.pushReplacementNamed(Routes.login);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Error: ${state.error}')),
                          );
                        }
                      },
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : const Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
