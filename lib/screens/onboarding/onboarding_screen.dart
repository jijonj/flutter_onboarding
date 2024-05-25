import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../providers/onboarding_provider.dart';

class OnboardingScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await ref
                .read(onboardingNotifierProvider.notifier)
                .completeOnboarding();
            context.go('/home');
          },
          child: Text('Complete Onboarding'),
        ),
      ),
    );
  }
}
