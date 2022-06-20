import 'package:flutter/material.dart';
import 'package:flutter_app_seminario/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {

  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Center(child: SwitchListTile(
        title: Text(themeState.getDarkTheme 
          ? 'Dark Theme'
          : 'Light Theme'),
        secondary: Icon( themeState.getDarkTheme
          ? Icons.dark_mode_outlined
          : Icons.light_mode_outlined),
        onChanged: (bool value){
          setState((){
            themeState.setDarkTheme = value;
          });
        },
        value: themeState.getDarkTheme))
    );
  }
}