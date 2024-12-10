import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'refersh_listenable_state.dart';

final refreshListenableProvider =
    ChangeNotifierProvider<_RefreshListenableProvider>((ref) {
  return _RefreshListenableProvider();
});

class _RefreshListenableProvider extends ChangeNotifier {
  RefreshListenableState state = RefreshListenableState();

  void updateSplashStatus(bool hasCompletedSplash) {
    state.updateSplashStatus(hasCompletedSplash);
    notifyListeners();
  }

  void updateOnboardingStatus(bool hasCompletedOnboarding) {
    state.updateOnboardingStatus(hasCompletedOnboarding);
    notifyListeners();
  }
}
