import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Column(
        children: [
          CustomAppbar(
            title: 'Settings',
            settings: true,
          ),
          SizedBox(height: 24),
          _Tile('Share with Friends'),
          SizedBox(height: 10),
          _Tile('Terms of Service'),
          SizedBox(height: 10),
          _Tile('Privacy Policy'),
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.main,
        borderRadius: BorderRadius.circular(50),
      ),
      child: CupertinoButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontFamily: Fonts.bold,
                ),
              ),
            ),
            SvgPicture.asset('assets/arrow_top.svg'),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
