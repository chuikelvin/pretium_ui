import 'package:flutter/material.dart';
import '../../core/theme/theme.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  const CustomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavBarIcon(
            icon: Icons.account_balance_wallet,
            selected: currentIndex == 0,
            onTap: () {
              if (currentIndex != 0) {
                Navigator.pushReplacementNamed(context, '/home');
              }
            },
          ),
          _NavBarIcon(
            icon: Icons.qr_code,
            selected: currentIndex == 1,
            isCenter: true,
            onTap: () {
              // TODO: Implement QR page navigation
            },
          ),
          _NavBarIcon(
            icon: Icons.receipt_long,
            selected: currentIndex == 2,
            onTap: () {
              if (currentIndex != 2) {
                Navigator.pushReplacementNamed(context, '/transactions');
              }
            },
          ),
        ],
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final IconData icon;
  final bool selected;
  final bool isCenter;
  final VoidCallback onTap;
  const _NavBarIcon({
    required this.icon,
    required this.selected,
    this.isCenter = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Widget iconWidget = Icon(
      icon,
      color: selected ? AppColors.primary : AppColors.textSecondary,
      size: isCenter ? 32 : 28,
    );
    return GestureDetector(
      onTap: onTap,
      child:
          isCenter
              ? Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.18),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(icon, color: Colors.white, size: 32),
              )
              : iconWidget,
    );
  }
}
