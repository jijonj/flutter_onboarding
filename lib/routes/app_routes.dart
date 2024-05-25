import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../screens/onboarding/onboarding_screen.dart';
import '../screens/home/home_screen.dart';
import '../providers/onboarding_provider.dart';

class AppRoutes {
  static GoRouter createRouter(WidgetRef ref) {
    final isOnboardingCompleted = ref.watch(onboardingNotifierProvider);

    return GoRouter(
      initialLocation: isOnboardingCompleted ? '/home' : '/onboarding',
      routes: [
        GoRoute(
          path: '/onboarding',
          builder: (context, state) => OnboardingScreen(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => HomeScreen(),
        ),
      ],
    );
  }
}
