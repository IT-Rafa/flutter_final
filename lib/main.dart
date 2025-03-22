import 'package:flutter/material.dart';
import 'package:flutter_final/pages/login_all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    /// [MyApp] is wrapped in a [ProviderScope].
    /// This widget is where the state of most of our providers will be stored.
    /// This replaces `MultiProvider` if you've used `provider` before.
    const ProviderScope(child: MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginAll());
  }
}
