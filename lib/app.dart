import 'package:felsi/src/core/service/routes/router.dart';
import 'package:felsi/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1.5,
      child: MaterialApp.router(
        theme: context.themeData,
        routerConfig: ref.read(router),
      ),
    );
  }
}
