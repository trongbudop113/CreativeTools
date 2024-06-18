import 'package:creative_tools/base/base_model.dart';
import 'package:creative_tools/core/custom_get_controller.dart';
import 'package:creative_tools/page/recipe/entity/tasty_recipe.dart';
import 'package:creative_tools/page/recipe/model/banner/banner_model.dart';
import 'package:creative_tools/page/recipe/model/banner/banner_view.dart';
import 'package:creative_tools/page/recipe/model/category/category_recipe_model.dart';
import 'package:creative_tools/page/recipe/model/category/category_recipe_view.dart';
import 'package:creative_tools/page/recipe/model/chef/chef_model.dart';
import 'package:creative_tools/page/recipe/model/chef/chef_view.dart';
import 'package:creative_tools/page/recipe/model/delicious/delecious_model.dart';
import 'package:creative_tools/page/recipe/model/delicious/delicious_view.dart';
import 'package:creative_tools/page/recipe/model/inbox/inbox_model.dart';
import 'package:creative_tools/page/recipe/model/inbox/inbox_view.dart';
import 'package:creative_tools/page/recipe/model/tasty_recipe/tasty_recipe_model.dart';
import 'package:creative_tools/page/recipe/model/tasty_recipe/tasty_recipe_view.dart';
import 'package:creative_tools/src/image_resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RecipeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => RecipeController());
  }
}


class RecipeController extends CustomGetController{

  List<Widget> listModelView = [];

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  initData(){
    BannerModel bannerModel = BannerModel();
    CategoryRecipeModel categoryRecipeModel = CategoryRecipeModel();
    TastyRecipeModel tastyRecipeModel = TastyRecipeModel();
    ChefModel chefModel = ChefModel();
    DeliciousModel deliciousModel = DeliciousModel();
    InboxModel inboxModel = InboxModel();
    listModelView.addAll([
      BannerView(model: bannerModel),
      CategoryRecipeView(model: categoryRecipeModel),
      TastyRecipeView(model: tastyRecipeModel),
      ChefView(model: chefModel,),
      DeliciousView(model: deliciousModel,),
      InboxView(model: inboxModel,),
      ]
    );
  }

  Widget getViewModel(int index){
    var data = listModelView[index];

    switch (data.runtimeType) {
      case BannerModel : {
        BannerModel model = data as BannerModel;
        return BannerView(model: model);
      }
      case CategoryRecipeModel : {
        CategoryRecipeModel model = data as CategoryRecipeModel;
        return CategoryRecipeView(model: model);
      }
      case TastyRecipeModel : {
        TastyRecipeModel model = data as TastyRecipeModel;
        return TastyRecipeView(model: model);
      }
      case ChefModel : {
        ChefModel model = data as ChefModel;
        return ChefView(model: model);
      }
      case DeliciousModel : {
        DeliciousModel model = data as DeliciousModel;
        return DeliciousView(model: model);
      }
      case InboxModel : {
        InboxModel model = data as InboxModel;
        return InboxView(model: model);
      }
      default : {
        return const SizedBox();
      }
    }

  }
}