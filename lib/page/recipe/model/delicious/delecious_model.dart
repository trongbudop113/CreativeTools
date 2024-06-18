import 'package:creative_tools/base/base_model.dart';
import 'package:creative_tools/page/recipe/entity/tasty_recipe.dart';
import 'package:creative_tools/src/image_resource.dart';

class DeliciousModel extends BaseModel{
  DeliciousModel();

  List<TastyRecipes> listDelicious = [
    TastyRecipes(
      id: 1,
      categoryId: 1,
      categoryName: "Snack",
      image: ImageResource.burger,
      time: 30,
      name: "Big and Juicy Wagyu Beef Cheeseburger",
      isLike: false,
      type: 0,
    ),
    TastyRecipes(
      id: 2,
      categoryId: 1,
      categoryName: "Fish",
      image: ImageResource.salmon,
      time: 30,
      name: "Fresh Lime Roasted Salmon with Ginger Sauce",
      isLike: false,
      type: 0,
    ),
    TastyRecipes(
      id: 3,
      categoryId: 1,
      categoryName: "Breakfast",
      image: ImageResource.pancake,
      time: 30,
      name: "Strawberry Oatmeal Pancake with Honey Syrup",
      isLike: false,
      type: 0,
    ),
    TastyRecipes(
      id: 4,
      categoryId: 1,
      categoryName: "Healthy",
      image: ImageResource.salad,
      time: 30,
      name: "Fresh and Healthy Mixed Mayonnaise Salad",
      isLike: false,
      type: 0,
    ),
    TastyRecipes(
      id: 5,
      categoryId: 1,
      categoryName: "Meat",
      image: ImageResource.meatBall,
      time: 30,
      name: "Chicken Meatballs with Cream Cheese",
      isLike: false,
      type: 0,
    ),

    TastyRecipes(
      id: 6,
      categoryId: 1,
      categoryName: "Sweet",
      image: ImageResource.orangePancake,
      time: 30,
      name: "Fruity Pancake with Orange & Blueberry",
      isLike: false,
      type: 0,
    ),
    TastyRecipes(
      id: 7,
      categoryId: 1,
      categoryName: "Snack",
      image: ImageResource.chickenRice,
      time: 30,
      name: "The Best Easy One Pot Chicken and Rice",
      isLike: false,
      type: 0,
    ),
    TastyRecipes(
      id: 8,
      categoryId: 1,
      categoryName: "Noodles",
      image: ImageResource.pasta,
      time: 30,
      name: "The Creamiest Creamy Chicken and Bacon Pasta",
      isLike: false,
      type: 0,
    ),
  ];

  @override
  void onFinish() {
    // TODO: implement onFinish
  }

  @override
  void onStart() {
    // TODO: implement onStart
  }
}