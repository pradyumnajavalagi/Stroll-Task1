import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:stroll_task1/core/theme.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: AppColors.background,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/icons/card.svg',
                width: 28,
                height: 28,
                colorFilter: const ColorFilter.mode(
                  AppColors.textMuted,
                  BlendMode.srcIn,
                ),
              ),
              badges.Badge(
                position: badges.BadgePosition.topEnd(top: 1, end: -10),
                badgeStyle: badges.BadgeStyle(
                  shape: badges.BadgeShape.square,
                  badgeColor: AppColors.primaryLight,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: AppColors.background,
                    width: 1.5,
                  ),
                ),
                badgeContent: const Text(
                  '   ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/icons/bonfire.svg',
                  width: 28,
                  height: 28,
                  colorFilter: const ColorFilter.mode(
                    AppColors.textMuted,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              badges.Badge(
                position: badges.BadgePosition.topEnd(top: 1, end: -8),
                badgeStyle: badges.BadgeStyle(
                  shape: badges.BadgeShape.square,
                  badgeColor: AppColors.primaryLight,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: AppColors.background,
                    width: 1.5,
                  ),
                ),
                badgeContent: const Text(
                  '10',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Proxima Nova',
                  ),
                  textAlign: TextAlign.center,
                ),
                child: SvgPicture.asset(
                  'assets/icons/message.svg',
                  width: 28, // slightly larger to match scale
                  height: 28,
                  colorFilter: const ColorFilter.mode(
                    AppColors.textMuted,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              SvgPicture.asset(
                'assets/icons/person.svg',
                width: 28,
                height: 28,
                colorFilter: const ColorFilter.mode(
                  AppColors.textMuted,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
