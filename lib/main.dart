import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'UI/mytheme.dart';
import 'home.dart';
import 'viewmodels/setting_view_model.dart';

void main() {
  runApp(const MyTD3());
}

class MyTD3 extends StatelessWidget {
  const MyTD3({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SettingViewModel(),
      child: Consumer<SettingViewModel>(
        builder: (context, notifier, child) {
          return MaterialApp(
            theme: notifier.isDark ? MyTheme.dark() : MyTheme.light(),
            title: 'TD3',
            home: Home(),
          );
        },
      ),
    );
  }
}
