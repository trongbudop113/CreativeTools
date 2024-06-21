import 'package:creative_tools/page/recipe/model/inbox/inbox_model.dart';
import 'package:creative_tools/src/image_resource.dart';
import 'package:flutter/material.dart';

class InboxViewMobile extends StatelessWidget {
  final InboxModel model;
  const InboxViewMobile({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return buildInbox(width);
  }

  Widget buildInbox(double width) {
    final double paddingItem = width * 0.055;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingItem),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: width * 0.345,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageResource.bgInbox),
                  fit: BoxFit.fill,
                ),),
          ),
          const SizedBox(
            height: 30,
          ),
          const Column(
            children: [
              Text("Foodieland."),
              SizedBox(
                height: 16,
              ),
              Text("Lorem ipsum dolor sit amet, consectetuipisicing elit, "),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Recipes",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Blog",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "About us",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 48,
          ),
          Container(
            height: 1,
            color: Colors.black.withOpacity(0.1),
          ),
          const SizedBox(
            height: 48,
          ),
          poweredCore(),
          const SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }

  Widget poweredCore() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text.rich(
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          TextSpan(
            children: [
              TextSpan(
                text: '2024 Flowbase. Powered by ',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'Flutter',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        )
      ],
    );
  }
}
