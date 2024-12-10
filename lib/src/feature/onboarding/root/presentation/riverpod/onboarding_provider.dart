import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository/onboarding_repository.dart';

part 'onboarding_provider.g.dart';

@riverpod
class OnboardingController extends _$OnboardingController {
  @override
  FutureOr<void> build() {
    // no op
  }

  Future<void> completeOnboarding() async {
    final onboardingRepository =
        ref.watch(onboardingRepositoryProvider).requireValue;

    // Set state to loading
    state = const AsyncLoading();

    // Perform onboarding completion and update state
    final result = await AsyncValue.guard(onboardingRepository.setOnboardingComplete);

    // Update the state with the result (success or error)
    state = result;
  }
}
