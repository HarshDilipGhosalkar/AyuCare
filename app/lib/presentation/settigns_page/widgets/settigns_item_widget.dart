import 'package:flutter/material.dart';
import 'package:veda/core/app_export.dart';

// ignore: must_be_immutable
class SettignsItemWidget extends StatelessWidget {
  const SettignsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(63),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgLocationPrimary,
            height: getSize(32),
            width: getSize(32),
          ),
          Padding(
            padding: getPadding(
              top: 4,
            ),
            child: Text(
              "",
              style: theme.textTheme.labelMedium,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Text(
              "",
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
        ],
      ),
    );
  }
}
