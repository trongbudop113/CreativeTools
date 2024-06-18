import 'package:creative_tools/page/recipe/model/category/category_recipe_model.dart';
import 'package:flutter/material.dart';

class CategoryRecipeView extends StatelessWidget {
  final CategoryRecipeModel model;
  const CategoryRecipeView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return buildCategory();
  }

  Widget buildCategory() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFE7FAFE),
                ),
                padding:
                const EdgeInsets.symmetric(vertical: 21, horizontal: 27),
                child: const Text(
                  "View All Categories",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          SizedBox(
            height: 202,
            child: ListView.separated(
              itemCount: model.listCategory.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (c, i) {
                return Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      colors: [
                        Color(
                          int.parse(
                              "0x00${model.listCategory[i].categoryColor}"),
                        ),
                        Color(
                          int.parse(
                              "0xFF${model.listCategory[i].categoryColor}"),
                        ).withOpacity(0.1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 1],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 10),
                        child: Image.asset(
                          model.listCategory[i].categoryIcon ?? '',
                          height: 120,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "${model.listCategory[i].categoryName}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (c, i) {
                return const SizedBox(
                  width: 40,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
