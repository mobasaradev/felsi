part of '../router.dart';

List<GoRoute> _authenticationRoutes = [
  GoRoute(
    path: Routes.login,
    name: Routes.login,
    pageBuilder: (context, state) => const MaterialPage(
      child: LoginPage(),
    ),
    routes: [
      GoRoute(
        path: Routes.registration,
        name: Routes.registration,
        pageBuilder: (context, state) => const MaterialPage(
          child: RegistrationPage(),
        ),
      ),
      GoRoute(
        path: Routes.emailVerification,
        name: Routes.emailVerification,
        pageBuilder: (context, state) => const MaterialPage(
          child: EmailVerifyPage(),
        ),
        routes: [
          GoRoute(
            path: Routes.otpVerification,
            name: Routes.otpVerification,
            pageBuilder: (context, state) => const MaterialPage(
              child: OTPVerifyPage(),
            ),
            routes: [
              GoRoute(
                path: Routes.createPassword,
                name: Routes.createPassword,
                pageBuilder: (context, state) => const MaterialPage(
                  child: CreatePasswordPage(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];
