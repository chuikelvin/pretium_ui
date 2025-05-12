import 'package:flutter/material.dart';
import '../../../core/theme/theme.dart';
import '../../../shared/widgets/custom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showBalance = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          Container(
            height:
                MediaQuery.of(context).size.height * 0.5, // Top 50% of screen
            color: AppColors.primary, // Change to your desired color
          ),
          SafeArea(
            child: Container(
              color: const Color(0xFFE8F3F1),
              child: Column(
                children: [
                  // App Bar
                  Container(
                    color: AppColors.primary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text(
                            'K',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(text: 'Hello, Kelvin '),
                                WidgetSpan(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 2),
                                    child: Text(
                                      '👋',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.notifications_none, color: Colors.white),
                      ],
                    ),
                  ),
                  // Wallet Card
                  Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.primary,
                          Color(0xff214d63),
                          // AppColors.primary.withOpacity(0.8),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary.withOpacity(0.08),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.2),
                              child: Icon(
                                Icons.account_balance_wallet,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              'Wallet Balance',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'KES ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  _showBalance ? '0.00' : '****',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                _showBalance ? '\$0.00' : '****',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: GestureDetector(
                            onTap:
                                () => setState(
                                  () => _showBalance = !_showBalance,
                                ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.2),
                              child: Icon(
                                _showBalance
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Financial Services
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Financial Services',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const Spacer(),
                            DropdownButton<String>(
                              value: 'Kenya',
                              underline: const SizedBox(),
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: AppColors.primary,
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: 'Kenya',
                                  child: Text('Kenya'),
                                ),
                              ],
                              onChanged: (_) {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        GridView.count(
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          mainAxisSpacing: 0,
                          crossAxisSpacing: 0,
                          physics: const NeverScrollableScrollPhysics(),
                          children: const [
                            _ServiceIcon(icon: Icons.send, label: 'Send Money'),
                            _ServiceIcon(
                              icon: Icons.shopping_bag_outlined,
                              label: 'Buy Goods',
                            ),
                            _ServiceIcon(
                              icon: Icons.receipt_long,
                              label: 'Paybill',
                            ),
                            _ServiceIcon(
                              icon: Icons.phone_android,
                              label: 'Airtime',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Recent Transactions
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                    child: Row(
                      children: [
                        const Text(
                          'Recent transactions',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'See all',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      itemCount: 3,
                      itemBuilder:
                          (context, index) => const _TransactionPlaceholder(),
                    ),
                  ),
                  const CustomNavBar(currentIndex: 0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ServiceIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const _ServiceIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primary.withOpacity(0.08),
          child: Icon(icon, color: AppColors.primary),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}

class _TransactionPlaceholder extends StatelessWidget {
  const _TransactionPlaceholder();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const CircleAvatar(backgroundColor: Color(0xFFE8F3F1)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 12, width: 100, color: Color(0xFFE8F3F1)),
                const SizedBox(height: 6),
                Container(height: 8, width: 60, color: Color(0xFFE8F3F1)),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Container(height: 12, width: 40, color: Color(0xFFE8F3F1)),
        ],
      ),
    );
  }
}
