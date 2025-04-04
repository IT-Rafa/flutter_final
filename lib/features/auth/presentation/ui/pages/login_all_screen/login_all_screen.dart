import 'package:flutter/material.dart';
import 'package:flutter_final/features/auth/presentation/ui/pages/login_all_screen/Login_all_screen_tablet_portrait.dart';
import 'package:flutter_final/features/auth/presentation/ui/pages/login_all_screen/login_all_screen_desktop.dart';
import 'package:flutter_final/features/auth/presentation/ui/pages/login_all_screen/login_all_screen_mobile_landscape.dart';
import 'package:flutter_final/features/auth/presentation/ui/pages/login_all_screen/login_all_screen_mobile_portrait.dart';
import 'package:flutter_final/features/auth/presentation/ui/pages/login_all_screen/login_all_screen_tablet_landscape.dart';
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

    if (screenSize.width < 640) {
      // mobile layout
      if (screenSize.height >= screenSize.width) {
        // Portrait layout
        return const LoginAllScreenMobilePortrait();
      } else {
        // Landscape layout
        return const LoginAllScreenMobileLandscape();
      }
    } else if (screenSize.width < 800) {
      // tablet layout
      if (screenSize.height >= screenSize.width) {
        // Portrait layout
        return const LoginAllScreenTabletPortrait();
      } else {
        // Landscape layout
        return const LoginAllScreenTabletLandscape();
      }
    } else {
      // desktop layout
      return const LoginAllScreenDesktop();
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
