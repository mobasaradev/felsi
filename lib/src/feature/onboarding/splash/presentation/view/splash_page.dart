import 'dart:async';

import 'package:felsi/src/core/gen/assets.gen.dart';
import 'package:felsi/src/core/service/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      context.pushReplacementNamed(Routes.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Assets.logo.appLogo.svg(width: 250),
      ),
    );
  }
}
