import 'package:cuppertino/models/app_state_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppStateModel>(
      create: (_) => AppStateModel()..loadProducts(),
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            navLargeTitleTextStyle: TextStyle(),
          ),
        ),
        home: CupertinoStoreApp(),
      ),
    );
  }
}
