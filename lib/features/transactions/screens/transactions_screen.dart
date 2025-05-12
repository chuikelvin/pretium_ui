import 'package:flutter/material.dart';
import '../../../core/theme/theme.dart';
import '../../../shared/widgets/custom_nav_bar.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFE8F3F1),
      body: Stack(
        children: [
          Container(
            height:
                MediaQuery.of(context).size.height * 0.5, // Top 50% of screen
            color: const Color(0xFFE8F3F1), // Change to your desired color
          ),
          SafeArea(
            child: Center(
              child: Container(
                color: const Color(0xFFE8F3F1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Transactions",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.receipt_long,
                      size: 64,
                      color: AppColors.textSecondary.withOpacity(0.4),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No transactions yet',
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    const CustomNavBar(currentIndex: 2),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: const CustomNavBar(currentIndex: 2),
    );
  }
}
