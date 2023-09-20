import 'dart:collection';

import '../schedule_page/schedule_page.dart';
import '../schedule_tab_container_page/schedule_tab_container_page.dart';
import '../settigns_page/widgets/settigns_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:veda/core/app_export.dart';
import 'package:veda/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SettignsPage extends StatelessWidget {
  SettignsPage({Key? key})
      : super(
          key: key,
        );

  List principles = ["Vata", "Pitta", "Kapha"];
  List count = ["6", "3", "1"];
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0, 0.47),
              colors: [
                appTheme.cyan300,
                appTheme.teal400,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.gradientCyanToTeal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgMoreicon,
                  height: getVerticalSize(16),
                  width: getHorizontalSize(4),
                  alignment: Alignment.centerRight,
                  margin: getMargin(
                    top: 10,
                    right: 20,
                  ),
                ),
                Container(
                  height: getSize(111),
                  width: getSize(111),
                  margin: getMargin(
                    left: 149,
                    top: 3,
                    right: 149,
                  ),
                  padding: getPadding(
                    left: 4,
                    top: 5,
                    right: 4,
                    bottom: 5,
                  ),
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://ik.imagekit.io/h88uvretx/profile.jpeg?updatedAt=1694810057612")),
                ),
                Padding(
                  padding: getPadding(
                    top: 19,
                  ),
                  child: Text(
                    "Harsh Ghosalkar",
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(101),
                  child: ListView.separated(
                    padding: getPadding(
                      left: 42,
                      top: 29,
                      right: 42,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return Padding(
                        padding: getPadding(
                          left: 30.5,
                          right: 30.5,
                        ),
                        child: SizedBox(
                          height: getVerticalSize(44),
                          child: VerticalDivider(
                            width: getHorizontalSize(1),
                            thickness: getVerticalSize(1),
                            color: appTheme.cyan100,
                          ),
                        ),
                      );
                    },
                    itemCount: principles.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                              margin: getMargin(left: 12),
                              padding: getPadding(
                                  left: 11, top: 13, right: 11, bottom: 13),
                              decoration: AppDecoration.outlineBlueGray
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 2),
                                        child: Text(principles[index],
                                            style:
                                                CustomTextStyles.bodySmall10)),
                                    Padding(
                                        padding: getPadding(top: 1, left: 4),
                                        child: Text(count[index],
                                            style:
                                                CustomTextStyles.titleMedium18))
                                  ]))
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 41,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 31,
                    right: 20,
                    bottom: 31,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Divider(),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ScheduleTabContainerPage()))
                              },
                              height: getSize(43),
                              width: getSize(43),
                              padding: getPadding(
                                all: 9,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMenu,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 12,
                                bottom: 10,
                              ),
                              child: Text(
                                "Appointmnet",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(24),
                              width: getSize(24),
                              margin: getMargin(
                                top: 10,
                                bottom: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Divider(),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Divider(),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              height: getSize(43),
                              width: getSize(43),
                              padding: getPadding(
                                all: 9,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgFaqsicon,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 11,
                                bottom: 11,
                              ),
                              child: Text(
                                "FAQs",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(24),
                              width: getSize(24),
                              margin: getMargin(
                                top: 10,
                                bottom: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Divider(),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                          bottom: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              height: getSize(43),
                              width: getSize(43),
                              padding: getPadding(
                                all: 9,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgWarning,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 12,
                                bottom: 10,
                              ),
                              child: Text(
                                "Help",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(24),
                              width: getSize(24),
                              margin: getMargin(
                                top: 10,
                                bottom: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
