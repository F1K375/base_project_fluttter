import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'config/di/module_util.dart';
import 'config/theme/app_colors.dart';
import 'ui/route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your config.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColor.createMaterialColor(AppColor.primary),
        textTheme: Theme.of(context)
            .textTheme
            .apply(
              fontSizeFactor: 1,
              bodyColor: AppColor.black.shade200,
              displayColor: AppColor.black.shade300,
            )
            .copyWith(
              button: Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(color: Colors.white),
            ),
      ),
      initialRoute: AppRoute.init,
      getPages: AppRoute.routeList,
    );
  }
}
