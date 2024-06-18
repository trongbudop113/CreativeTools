import 'package:creative_tools/base/base_model.dart';
import 'package:creative_tools/page/recipe/entity/category_recipe.dart';
import 'package:creative_tools/src/image_resource.dart';

class CategoryRecipeModel extends BaseModel{
  CategoryRecipeModel(){
    onStart();
  }

  List<CategoryRecipe> listCategory = [
    CategoryRecipe(
        categoryId: 1,
        categoryName: "Breakfast",
        categoryIcon: ImageResource.breakFast,
        categoryColor: "708246"
    ),
    CategoryRecipe(
        categoryId: 1,
        categoryName: "Vegan",
        categoryIcon: ImageResource.vegan,
        categoryColor: "6CC63F"
    ),
    CategoryRecipe(
        categoryId: 1,
        categoryName: "Meat",
        categoryIcon: ImageResource.meat,
        categoryColor: "CC261B"
    ),
    CategoryRecipe(
        categoryId: 1,
        categoryName: "Dessert",
        categoryIcon: ImageResource.cake,
        categoryColor: "F09E00"
    ),
    CategoryRecipe(
        categoryId: 1,
        categoryName: "Lunch",
        categoryIcon: ImageResource.sandwich,
        categoryColor: "000000"
    ),
    CategoryRecipe(
        categoryId: 1,
        categoryName: "Chocolate",
        categoryIcon: ImageResource.chocolate,
        categoryColor: "000000"
    ),
  ];

  @override
  void onStart(){

  }

  @override
  void onFinish() {

  }

}