import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rettiwt/provider/theme.dart';

class TextThemeToggle extends StatelessWidget {
  const TextThemeToggle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, provider, child) {
        return GestureDetector(
          onTap: () {
            provider.toggle();
          },
          child: Container(
            // color: Colors.red,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Toggle',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15.0,
              ),
            ),
          ),
        );
      },
    );
  }
}
