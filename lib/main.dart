import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/routes/routes.dart';
import 'domain/providers_references/providers.dart';
import 'view/home_page/home_page.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final themeSwitcher = watch(themeSwitcherProvider);
    return PlatformProvider(
      initialPlatform: TargetPlatform.iOS,
      builder: (context) => PlatformApp(
        debugShowCheckedModeBanner: false,
        material: (context, platform) => MaterialAppData(
            theme: themeSwitcher.isDark ? ThemeData.dark() : ThemeData.light()),
        cupertino: (context, platform) => CupertinoAppData(
          theme: CupertinoThemeData(
              brightness:
                  themeSwitcher.isDark ? Brightness.dark : Brightness.light),
        ),
        title: 'Platform App',
        routes: MyRoutes.routes,
        initialRoute: '/home-page',
        home: HomePage(),
      ),
    );
  }
}
