import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'store_home_page.dart';

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      home: StoreHomePage(),
    );
  }
}