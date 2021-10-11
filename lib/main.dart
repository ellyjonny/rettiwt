import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rettiwt/homepage.dart';
import 'package:rettiwt/provider/theme.dart';
import 'app_state/util/themes/theme_manager.dart';
import 'package:provider/provider.dart';

void main() {
  final style = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  );
  SystemChrome.setSystemUIOverlayStyle(style);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return Consumer<ThemeProvider>(
      builder: (context, provider, child) {
        return MaterialApp(
          themeMode: provider.isDark ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeManager.lightTheme,
          darkTheme: ThemeManager.darkTheme,
          debugShowCheckedModeBanner: false,
          home: Homepage(),
        );
      },
    );
  }
}
