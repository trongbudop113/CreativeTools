import 'package:creative_tools/page/recipe/model/chef/chef_model.dart';
import 'package:creative_tools/src/image_resource.dart';
import 'package:flutter/material.dart';

class ChefView extends StatelessWidget {
  final ChefModel model;
  const ChefView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return buildChefKitchen();
  }

  Widget buildChefKitchen() {
    return Column(
      children: [
        const SizedBox(
          height: 143,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          height: 597,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Everyone can be a chef in their own kitchen",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetuipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqut enim ad minim",
                      style: TextStyle(
                        fontSize: 16,
                        height: 28 / 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 72,
                    ),
                    Container(
                        width: 180,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: const Text(
                          "Learn More",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                  ],
                ),
              ),
              Image.asset(
                ImageResource.chef,
                width: 710,
                height: 597,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 160,
        ),
      ],
    );
  }
}
