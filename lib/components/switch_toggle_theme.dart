import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rettiwt/provider/theme.dart';

class SwitchThemeToggle extends StatelessWidget {
  const SwitchThemeToggle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, provider, child) {
        return Switch(
          value: provider.isDark,
          onChanged: (switchValue) {
            provider.switchToggle(switchValue: switchValue);
          },
        );
      },
    );
  }
}