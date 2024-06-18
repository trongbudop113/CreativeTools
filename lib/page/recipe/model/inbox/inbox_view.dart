import 'package:creative_tools/page/recipe/model/inbox/inbox_model.dart';
import 'package:creative_tools/src/image_resource.dart';
import 'package:flutter/material.dart';

class InboxView extends StatelessWidget {
  final InboxModel model;
  const InboxView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return buildInbox();
  }

  Widget buildInbox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        children: [
          const SizedBox(
            height: 160,
          ),
          Container(
            height: 442,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageResource.bgInbox),
                  fit: BoxFit.fill,
                )),
          ),
          const SizedBox(
            height: 160,
          ),
          const Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Foodieland."),
                  SizedBox(
                    height: 16,
                  ),
                  Text("Lorem ipsum dolor sit amet, consectetuipisicing elit, ")
                ],
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                "Recipes",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "Blog",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "Contact",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                "About us",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )
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
