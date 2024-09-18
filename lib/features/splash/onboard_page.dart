import 'package:fix_ease/core/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/config/router.dart';
import '../../core/utils.dart';
import '../../core/widgets/buttons/primary_button.dart';
import '../../core/widgets/custom_scaffold.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.asset('assets/border.svg'),
            // Container(
            //   height: 260,
            //   decoration: BoxDecoration(
            //     color: Colors.transparent, // Background color of the container
            //     borderRadius: BorderRadius.circular(10), // Rounded corners
            //     border: Border.all(
            //       color: Colors.grey, // Border color
            //       width: 2.0, // Border width
            //     ),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.black
            //             .withOpacity(0.3), // Shadow color with opacity
            //         spreadRadius: 1, // How far the shadow spreads
            //         blurRadius: 5, // The blur radius of the shadow
            //         offset: const Offset(2, 2), // Position of the shadow
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 50),
            Stack(
              children: <Widget>[
                Text(
                  'Welcome to FixEase',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: Fonts.kabrioE,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = AppColors.white,
                    shadows: const [
                      Shadow(
                        color: AppColors.main,
                        blurRadius: 28,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Welcome to FixEase',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: Fonts.kabrioE,
                    color: AppColors.main,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Simplify the process of conducting technical maintenance and repair of various objects with the help of our application.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontFamily: Fonts.bold,
              ),
            ),
            const Spacer(),
            PrimaryButton(
              title: 'Get Started',
              onPressed: () {
                context.push(Routes.profile);
              },
            ),
            SizedBox(height: 40 + getBottom(context)),
          ],
        ),
      ),
    );
  }
}
