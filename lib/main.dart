import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:laxminarayan_portfolio/utils/utils.dart';

import 'api_calls/services/services.dart';
import 'navigators/navigators.dart';
import 'package:url_strategy/url_strategy.dart';

import 'theme/app_theme.dart';

void main() async {
  setPathUrlStrategy();
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await initializeServices();

    // await FacebookAuth.instance.webInitialize(
    //   appId: "1170078440473690",
    //   cookie: true,
    //   xfbml: true,
    //   version: "v13.0",
    // );
    runApp(MyApp());
  } catch (error) {
    Utility.printELog(error.toString());
  }
}

Future<void> initializeServices() async {
  Get.put(CommonService(), permanent: true);
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
    );

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => GetMaterialApp(
        scrollBehavior: AppScrollBehavior(),
        locale: const Locale('en'),
        title: StringConstants.appName,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        getPages: AppPages.pages,
        theme: themeData(context),
        darkTheme: darkThemeData(context),
        translations: TranslationFile(),
        initialRoute: AppPages.initial,
        enableLog: true,
      ),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
