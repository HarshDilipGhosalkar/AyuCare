import '../cart_screen/widgets/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:veda/core/app_export.dart';
import 'package:veda/widgets/app_bar/appbar_image_1.dart';
import 'package:veda/widgets/app_bar/appbar_subtitle.dart';
import 'package:veda/widgets/app_bar/custom_app_bar.dart';
import 'package:veda/widgets/custom_elevated_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
                title: AppbarSubtitle(text: "My Cart")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 24, right: 20, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(25));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return CartItemWidget(onTapRowobhcombi: () {
                                  onTapRowobhcombi(context);
                                });
                              })),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("Payment Detail",
                              style: theme.textTheme.titleMedium)),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Subtotal",
                                    style: theme.textTheme.bodyMedium),
                                Text("19.98", style: theme.textTheme.bodyMedium)
                              ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Taxes",
                                    style: theme.textTheme.bodyMedium),
                                Text("1.00", style: theme.textTheme.bodyMedium)
                              ])),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total",
                                    style: CustomTextStyles
                                        .titleSmallPrimaryContainer),
                                Text("20.98",
                                    style: CustomTextStyles
                                        .titleSmallPrimaryContainer)
                              ])),
                      Padding(padding: getPadding(top: 14), child: Divider()),
                      Padding(
                          padding: getPadding(top: 15),
                          child: Text("Payment Method",
                              style: theme.textTheme.titleMedium)),
                      Container(
                          margin: getMargin(top: 13, bottom: 5),
                          padding: getPadding(all: 14),
                          decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 8),
                                    child: Text("VISA",
                                        style:
                                            CustomTextStyles.titleMediumBlack)),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("Change",
                                        style: theme.textTheme.bodySmall))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 20, bottom: 26),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 4, bottom: 4),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Total",
                                    style: CustomTextStyles
                                        .titleSmallErrorContainer),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text(" 20.98",
                                        style: CustomTextStyles.titleMedium18))
                              ])),
                      CustomElevatedButton(
                          width: getHorizontalSize(192), text: "Checkout")
                    ]))));
  }

  /// Navigates to the drugDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the drugDetailsScreen.
  onTapRowobhcombi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.drugDetailsScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
