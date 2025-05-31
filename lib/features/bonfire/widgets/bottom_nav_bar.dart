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
          padding: const EdgeInsets.symmetric(
              vertical: 16.0, horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/icons/card.svg',
                width: 35,
                height: 35,
                colorFilter: const ColorFilter.mode(
                  AppColors.textMuted,
                  BlendMode.srcIn,
                ),
              ),
              badges.Badge(
                position: badges.BadgePosition.topEnd(top: -4, end: -4),
                badgeStyle: const badges.BadgeStyle(
                  shape: badges.BadgeShape.square,
                  badgeColor: AppColors.primaryLight,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: AppColors.background,
                    width: 1.5,
                  ),
                ),
                badgeContent: const Text(
                  '       ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 4,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/icons/bonfire.svg',
                  colorFilter: const ColorFilter.mode(
                    AppColors.textMuted,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              badges.Badge(
                position: badges.BadgePosition.topEnd(top: -4, end: -4),
                badgeStyle: const badges.BadgeStyle(
                  shape: badges.BadgeShape.square,
                  badgeColor: AppColors.primaryLight,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: AppColors.background,
                    width: 1.5,
                  ),
                ),
                badgeContent: const Text(
                  ' 10 ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 6,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/icons/message.svg',
                  colorFilter: const ColorFilter.mode(
                    AppColors.textMuted,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              SvgPicture.asset(
                'assets/icons/person.svg',
                width: 35,
                height: 35,
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