import 'package:carousel_slider/carousel_slider.dart';
import 'package:creative_tools/core/custom_get_view.dart';
import 'package:creative_tools/page/recipe/recipe_controller.dart';
import 'package:creative_tools/src/image_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipePage extends CustomGetView<RecipeController> {
  const RecipePage({super.key});

  @override
  Widget buildMobileUI(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }

  @override
  Widget buildWebUI(BuildContext context) {
    return ListView.builder(
      itemCount: controller.listModelView.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (c, i){
        return controller.listModelView[i];
      },
    );
  }

  @override
  Widget buildAppBarWeb(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 60,),
                Text(
                  "Recipes",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 60,),
                Text(
                  "Blog",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 60,),
                Text(
                  "Contact",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 60,),
                Text(
                  "About us",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 1,
            color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
    );
  }

  @override
  Widget buildAppBarMobile(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.red,
    );
  }

  Widget buildSocial() {
    return Container();
  }
}
