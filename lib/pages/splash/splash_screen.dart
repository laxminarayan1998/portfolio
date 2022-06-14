import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:laxminarayan_portfolio/pages/splash/splash.dart';
import 'package:laxminarayan_portfolio/theme/dimens.dart';
import 'package:laxminarayan_portfolio/theme/styles.dart';
import 'package:laxminarayan_portfolio/utils/utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<SplashController>(
    builder: (context) {
      return Scaffold(
            body: Container(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Transform.translate(
                      offset: Offset(5, 0),
                      child: SvgPicture.asset(
                        AssetConstants.logo,
                        height: Dimens.hundred + Dimens.fifty
                      ),
                    ),
                    Text(
                      'anAppDeveloer'.tr.toUpperCase(),
                      style: Styles.boldBlack16.copyWith(height: .2, letterSpacing: 10.0, fontSize: Dimens.sixteen),
                    ),
                  ],
                ),
              ),
            ),
          );
    }
  );
}
