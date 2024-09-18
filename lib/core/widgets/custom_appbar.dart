import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/app_colors.dart';
import '../config/router.dart';
import '../utils.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.home = false,
    this.settings = false,
  });

  final String title;
  final bool home;
  final bool settings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24 + getStatusBar(context)),
      child: Row(
        children: [
          const SizedBox(width: 20),
          if (!home) ...[
            Container(
              height: 42,
              width: 100,
              decoration: BoxDecoration(
                color: AppColors.main,
                borderRadius: BorderRadius.circular(30),
              ),
              child: CupertinoButton(
                onPressed: () {
                  context.pop();
                },
                padding: EdgeInsets.zero,
                minSize: 42,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/arrow_back.svg'),
                    const SizedBox(width: 10),
                    const Text(
                      'Back',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20,
                        fontFamily: Fonts.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],
          Expanded(
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 20,
                fontFamily: Fonts.kabrioE,
              ),
            ),
          ),
          if (!settings)
            CupertinoButton(
              onPressed: () {
                context.push(Routes.settings);
              },
              padding: EdgeInsets.zero,
              minSize: 42,
              child: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: AppColors.main,
                  borderRadius: BorderRadius.circular(21),
                ),
                child: Center(
                  child: SvgPicture.asset('assets/settings.svg'),
                ),
              ),
            ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
