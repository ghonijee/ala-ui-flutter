import 'package:ala_ui/ala_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BaseUI(
      themeMode: ThemeMode.dark,
      builder: (context, themeLight, themeDark, themeMode) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: themeLight,
          darkTheme: themeDark,
          themeMode: themeMode,
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeFoundation theme = BaseUI.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: theme.color.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Display Large",
              style: theme.typo.displayLarge,
            ),
            Text(
              "Display Medium",
              style: theme.typo.displayMedium,
            ),
            Text(
              "Display Small",
              style: theme.typo.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
