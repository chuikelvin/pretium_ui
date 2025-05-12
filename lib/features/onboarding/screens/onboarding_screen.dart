import 'package:flutter/material.dart';
import 'onboarding_page.dart';
import '../../../core/theme/theme.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, dynamic>> _pages = [
    {
      'icon': Icons.credit_card,
      'title': 'Direct Pay',
      'subtitle': 'Pay with crypto across Africa effortlessly',
    },
    {
      'icon': Icons.account_balance_wallet,
      'title': 'Accept Payments',
      'subtitle': 'Accept stablecoin payments hassle-free',
    },
    {
      'icon': Icons.receipt_long,
      'title': 'Pay Bills',
      'subtitle': 'Pay for utility services and earn rewards',
    },
  ];

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: _pages.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) {
                final page = _pages[index];
                return OnboardingPage(
                  icon: page['icon'],
                  title: page['title'],
                  subtitle: page['subtitle'],
                );
              },
            ),
            Positioned(
              top: 24,
              right: 24,
              child: TextButton(
                onPressed: () {
                  _controller.jumpToPage(_pages.length - 1);
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              left: 24,
              right: 24,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(_pages.length, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 16,
                        height: 6,
                        decoration: BoxDecoration(
                          color:
                              _currentPage == index
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(
                                    context,
                                  ).primaryColor.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _nextPage,
                      child: Text(
                        _currentPage == _pages.length - 1
                            ? 'Get Started'
                            : 'Next',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
