import 'package:creative_tools/page/recipe/model/delicious/delecious_model.dart';
import 'package:creative_tools/src/image_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliciousView extends StatelessWidget {
  final DeliciousModel model;
  const DeliciousView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return buildDelicious();
  }

  Widget buildDelicious() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: Text(
                  "Try this delicious recipe to make your day",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetuipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqut enim ad minim",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 28 / 16,
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          GridView.builder(
            itemCount: model.listDelicious.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 40,
              mainAxisSpacing: 40,
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
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              data.image ?? '',
                              fit: BoxFit.fill,
                            ),
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
                      height: 16,
                    ),
                    Text(
                      data.name ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        height: 26 / 18,
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
          )
        ],
      ),
    );
  }
}
