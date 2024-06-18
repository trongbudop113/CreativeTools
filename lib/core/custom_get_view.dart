import 'package:creative_tools/core/custom_get_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CustomGetView<T extends CustomGetController> extends GetView<T> {
  const CustomGetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4E6F1),
        body: Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1920, minWidth: 600),
        child: LayoutBuilder(
          builder: (c, constraint) {
            return Container(
              color: Colors.white,
              child: Column(
                children: [
                  _buildAppBar(context, constraint),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: constraint.constrainWidth() > 900
                          ? _buildWeb(context)
                          : _buildTabletAndMobile(context),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    ));
  }

  Widget _buildAppBar(BuildContext context, BoxConstraints constraint) {
    return Container(
      child: constraint.constrainWidth() > 900
          ? Container(
              constraints: const BoxConstraints(
                maxWidth: 1440,
                minWidth: 600,
              ),
              child: buildAppBarWeb(context),
            )
          : buildAppBarMobile(context),
    );
  }

  Widget _buildWeb(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 1440,
          minWidth: 600,
        ),
        child: buildWebUI(context),
      ),
    );
  }

  Widget _buildTabletAndMobile(BuildContext context) {
    return buildMobileUI(context);
  }

  Widget buildMobileUI(BuildContext context);

  Widget buildWebUI(BuildContext context);

  Widget buildAppBarWeb(BuildContext context) {
    return const SizedBox();
  }

  Widget buildAppBarMobile(BuildContext context) {
    return const SizedBox();
  }
}
