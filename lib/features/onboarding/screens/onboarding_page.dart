import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const OnboardingPage({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        CircleAvatar(
          radius: 48,
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.08),
          child: Icon(icon, size: 48, color: Theme.of(context).primaryColor),
        ),
        const SizedBox(height: 32),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
