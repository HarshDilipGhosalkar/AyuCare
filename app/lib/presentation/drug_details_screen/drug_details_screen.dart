import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:veda/core/app_export.dart';
import 'package:veda/widgets/app_bar/appbar_image.dart';
import 'package:veda/widgets/app_bar/appbar_image_1.dart';
import 'package:veda/widgets/app_bar/appbar_subtitle.dart';
import 'package:veda/widgets/app_bar/custom_app_bar.dart';
import 'package:veda/widgets/custom_elevated_button.dart';
import 'package:veda/widgets/custom_icon_button.dart';
import 'package:veda/widgets/custom_rating_bar.dart';

class DrugDetailsScreen extends StatelessWidget {
  const DrugDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(45),
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 21, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Drugs detail"),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgCart,
                      margin:
                          getMargin(left: 20, top: 16, right: 20, bottom: 16),
                      onTap: () {
                        onTapCartone(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 48, right: 20, bottom: 48),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse27image,
                          height: getSize(147),
                          width: getSize(147),
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(top: 62),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("OBH Combi",
                                          style: theme.textTheme.titleLarge),
                                      Padding(
                                          padding: getPadding(top: 7),
                                          child: Text("75ml",
                                              style: CustomTextStyles
                                                  .titleMediumErrorContainer)),
                                      Padding(
                                          padding: getPadding(top: 10),
                                          child: Row(children: [
                                            CustomRatingBar(
                                                margin: getMargin(
                                                    top: 1, bottom: 1),
                                                initialRating: 0),
                                            Padding(
                                                padding: getPadding(left: 5),
                                                child: Text("4.0",
                                                    style: CustomTextStyles
                                                        .titleSmallCyan300))
                                          ]))
                                    ]),
                                CustomImageView(
                                    svgPath: ImageConstant.imgFavorite,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 28, bottom: 27))
                              ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCarErrorcontainer,
                                height: getSize(32),
                                width: getSize(32)),
                            Padding(
                                padding: getPadding(left: 23),
                                child: Text("1",
                                    style: theme.textTheme.headlineSmall)),
                            CustomImageView(
                                svgPath: ImageConstant.imgPlus,
                                height: getSize(32),
                                width: getSize(32),
                                margin: getMargin(left: 29)),
                            Spacer(),
                            Text("9.99", style: theme.textTheme.headlineMedium)
                          ])),
                      Padding(
                          padding: getPadding(top: 39),
                          child: Text("Description",
                              style: theme.textTheme.titleMedium)),
                      Container(
                          width: getHorizontalSize(331),
                          margin: getMargin(top: 10, bottom: 5),
                          child: ReadMoreText(
                              "OBH COMBI  is a cough medicine containing, Paracetamol, Ephedrine HCl, and Chlorphenamine maleate which is used to relieve coughs accompanied by flu symptoms such as fever, headache, and sneezing... ",
                              trimLines: 4,
                              colorClickableText: appTheme.cyan300,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: "Read more",
                              moreStyle: theme.textTheme.bodySmall!
                                  .copyWith(height: 1.67),
                              lessStyle: theme.textTheme.bodySmall!
                                  .copyWith(height: 1.67)))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 20, bottom: 28),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomIconButton(
                      height: getSize(50),
                      width: getSize(50),
                      padding: getPadding(all: 13),
                      decoration: IconButtonStyleHelper.fillBlueGray,
                      child: CustomImageView(
                          svgPath: ImageConstant.imgCartCyan300)),
                  Expanded(
                      child: CustomElevatedButton(
                          text: "Buy Now",
                          margin: getMargin(left: 19),
                          onTap: () {
                            onTapBuynow(context);
                          }))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the cartScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cartScreen.
  onTapCartone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreen);
  }

  /// Navigates to the cartScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cartScreen.
  onTapBuynow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreen);
  }
}
