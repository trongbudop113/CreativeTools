import 'package:creative_tools/page/recipe/recipe_controller.dart';
import 'package:creative_tools/page/recipe/recipe_page.dart';
import 'package:get/get.dart';

class PageConfig{

  static const String home = "/";
  static const String recipe = "/recipe";

  static List<GetPage> listPage(){
    return [
      GetPage(
        name: recipe,
        page: () => const RecipePage(),
        binding: RecipeBinding(),
      ),
    ];
  }
}