import 'package:creative_tools/page/recipe/recipe_controller.dart';
import 'package:creative_tools/page/recipe/recipe_page.dart';
import 'package:creative_tools/page_config.dart';
import 'package:creative_tools/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const RecipePage(),
      initialBinding: RecipeBinding(),
      initialRoute: PageConfig.recipe,

      getPages: PageConfig.listPage(),
    );
  }
}
