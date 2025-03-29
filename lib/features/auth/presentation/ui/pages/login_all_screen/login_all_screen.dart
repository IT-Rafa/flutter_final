import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginAllScreen extends ConsumerStatefulWidget {
  const LoginAllScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginAllScreenState();
}

class _LoginAllScreenState extends ConsumerState<LoginAllScreen> {
  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenSize = MediaQuery.sizeOf(context);

    if (screenSize.width > 600) {
      // Wide screen layout
      return const WideScreenLayout();
    } else {
      // Narrow screen layout
      return const NarrowScreenLayout();
    }
  }
}

class WideScreenLayout extends StatelessWidget {
  const WideScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the wide screen layout',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class NarrowScreenLayout extends StatelessWidget {
  const NarrowScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the narrow screen layout',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
