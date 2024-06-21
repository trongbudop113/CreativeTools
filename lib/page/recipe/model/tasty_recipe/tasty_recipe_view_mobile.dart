import 'package:creative_tools/page/recipe/model/tasty_recipe/tasty_recipe_model.dart';
import 'package:creative_tools/src/image_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TastyRecipeViewMobile extends StatelessWidget {
  final TastyRecipeModel model;
  const TastyRecipeViewMobile({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    //print(width);
    return buildSimpleAndTasty(width);
  }

  Widget buildSimpleAndTasty(double width) {

    final double paddingItem = width * 0.055;
    final itemCount = width < 750 ? 2 : 3;

    return Column(
      children: [
        const SizedBox(height: 90),
        const Text(
          "Simple and tasty recipes",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 26,
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
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: paddingItem),
          child: GridView.builder(
            itemCount: model.listTastyRecipes.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: itemCount,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 400 / 434,
            ),
            itemBuilder: (BuildContext context, int index) {
              var data = model.listTastyRecipes[index];

              if (data.type == 1) {
                return Image.asset(data.image ?? '');
              }

              return Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
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
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(data.image ?? ''),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: SvgPicture.asset(
                            ImageResource.unlike,
                            width: 24,
                            height: 24,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      data.name ?? '',
                      style: const TextStyle(
                        fontSize: 14,
                        height: 20 / 14,
                        fontWeight: FontWeight.w800,
                      ),
                      maxLines: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          ImageResource.timer,
                          width: 15,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${data.time} Minutes",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        SvgPicture.asset(
                          ImageResource.knife,
                          width: 15,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${data.categoryName}",
                          style: const TextStyle(
                            fontSize: 12,
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
