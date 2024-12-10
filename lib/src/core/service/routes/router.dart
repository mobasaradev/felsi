import 'dart:async';

import 'package:felsi/src/feature/dashboard/search/presentation/view/user_input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../feature/Authentications/forget_password/create_password/presentation/view/create_password_page.dart';
import '../../../feature/Authentications/forget_password/email_verify/presentation/view/email_verify_page.dart';
import '../../../feature/Authentications/forget_password/otp_verify/presentation/view/otp_verify_page.dart';
import '../../../feature/Authentications/login/presentation/view/login_page.dart';
import '../../../feature/Authentications/registration/presentation/view/registration_page.dart';
import '../../../feature/dashboard/root/presentation/view/dashboard_page.dart';
import '../../../feature/onboarding/root/presentation/view/onboarding_page.dart';
import '../../../feature/onboarding/splash/presentation/view/splash_page.dart';
import 'refresh_listenable/refresh_listenable_provider.dart';
import 'routes.dart';

part './parts/authentication_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Root');

final router = Provider<GoRouter>(
  (ref) {
    final listenableState = ref.watch(refreshListenableProvider);

    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: Routes.splash,
      refreshListenable: listenableState,
      routes: [
        GoRoute(
          path: Routes.splash,
          name: Routes.splash,
          redirect: (context, state) async {
            if (listenableState.state.hasCompletedSplash) {
              return Routes.onboarding;
            }
            return null;
          },
          pageBuilder: (context, state) {
            Timer(
              const Duration(seconds: 1),
              () => listenableState.updateSplashStatus(true),
            );
            return const MaterialPage(child: SplashPage());
          },
        ),
        GoRoute(
          path: Routes.onboarding,
          name: Routes.onboarding,
          onExit: (context, state) async {
            // listenableState.updateOnboardingStatus(true);

            return true;
          },
          pageBuilder: (context, state) => const MaterialPage(
            child: OnboardingPage(),
          ),
        ),
        ..._authenticationRoutes,
        GoRoute(
          path: Routes.dashboard,
          name: Routes.dashboard,
          pageBuilder: (context, state) => const MaterialPage(
            child: DashboardPage(),
          ),
          routes: [
            GoRoute(
              path: Routes.userInputPage,
              name: Routes.userInputPage,
              pageBuilder: (context, state) => MaterialPage(
                child: UserInputPage(),
              ),
            ),
          ],
        ),
      ],
    );
  },
);
