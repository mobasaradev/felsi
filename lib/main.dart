import 'package:felsi/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

import 'src/feature/dashboard/home/presentation/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: context.themeData,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
