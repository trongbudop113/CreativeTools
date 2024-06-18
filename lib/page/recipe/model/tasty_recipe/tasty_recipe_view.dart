import 'package:creative_tools/page/recipe/model/tasty_recipe/tasty_recipe_model.dart';
import 'package:creative_tools/src/image_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TastyRecipeView extends StatelessWidget {
  final TastyRecipeModel model;
  const TastyRecipeView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return buildSimpleAndTasty();
  }

  Widget buildSimpleAndTasty() {
    return Column(
      children: [
        const SizedBox(height: 183),
        const Text(
          "Simple and tasty recipes",
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const Text(
          "Lorem ipsum dolor sit amet, consectetuipisicing elit, sed do eiusmod tempor incididunt\nut labore et dolore magna aliqut enim ad minim",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 96,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: GridView.builder(
            itemCount: model.listTastyRecipes.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 40,
              mainAxisSpacing: 40,
              childAspectRatio: 400 / 434,
            ),
            itemBuilder: (BuildContext context, int index) {
              var data = model.listTastyRecipes[index];

              if (data.type == 1) {
                return Image.asset(data.image ?? '');
              }

              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFE7F9FD).withOpacity(0),
                      Color(0xFFE7F9FD),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: 368 / 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(data.image ?? ''),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          right: 20,
                          child: SvgPicture.asset(
                            ImageResource.unlike,
                            width: 48,
                            height: 48,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      data.name ?? '',
                      style: const TextStyle(
                        fontSize: 24,
                        height: 32 / 24,
                        fontWeight: FontWeight.w800,
                      ),
                      maxLines: 2,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          ImageResource.timer,
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${data.time} Minutes",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        SvgPicture.asset(
                          ImageResource.knife,
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${data.categoryName}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
