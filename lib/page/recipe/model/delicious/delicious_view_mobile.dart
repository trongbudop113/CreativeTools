import 'package:creative_tools/page/recipe/model/delicious/delecious_model.dart';
import 'package:creative_tools/src/image_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliciousViewMobile extends StatelessWidget {
  final DeliciousModel model;
  const DeliciousViewMobile({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return buildDelicious(width);
  }

  Widget buildDelicious(double width) {
    final double paddingItem = width * 0.055;
    final itemCount = width < 750 ? 2 : 3;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingItem),
      child: Column(
        children: [
          const Text(
            "Try this delicious recipe to make your day",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 20,),
          const Text(
            "Lorem ipsum dolor sit amet, consectetuipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqut enim ad minim",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              height: 20 / 13,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GridView.builder(
            itemCount: model.listDelicious.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: itemCount,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 290 / 316,
            ),
            itemBuilder: (BuildContext context, int index) {
              var data = model.listDelicious[index];

              if (data.type == 1) {
                return Image.asset(data.image ?? '');
              }

              return Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: 290 / 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              data.image ?? '',
                              fit: BoxFit.fill,
                            ),
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
                        fontSize: 13,
                        height: 20 / 13,
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
                          width: 18,
                          height: 18,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          "${data.time} Minutes",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset(
                          ImageResource.knife,
                          width: 18,
                          height: 18,
                        ),
                        const SizedBox(
                          width: 6,
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
          )
        ],
      ),
    );
  }
}
