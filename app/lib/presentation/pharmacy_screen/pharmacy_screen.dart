import 'package:flutter/material.dart';
import 'package:veda/core/app_export.dart';
import 'package:veda/widgets/app_bar/appbar_image.dart';
import 'package:veda/widgets/app_bar/appbar_image_1.dart';
import 'package:veda/widgets/app_bar/appbar_subtitle.dart';
import 'package:veda/widgets/app_bar/custom_app_bar.dart';
import 'package:veda/widgets/custom_elevated_button.dart';
import 'package:veda/widgets/custom_search_view.dart';

import '../drug_details_screen/drug_details_screen.dart';

// ignore_for_file: must_be_immutable
class PharmacyScreen extends StatelessWidget {
  PharmacyScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Expanded(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(45),
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 21, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Pharmacy"),
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
                padding: getPadding(top: 18, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          margin: getMargin(left: 20, top: 5, right: 20),
                          controller: searchController,
                          autofocus: false,
                          hintText: "Search drugs, category...",
                          hintStyle: theme.textTheme.bodySmall!,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 11, right: 12, bottom: 11),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    searchController.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600)))),
                      Padding(
                          padding: getPadding(left: 20, top: 49, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Popular Product",
                                    style:
                                        CustomTextStyles.titleMediumBlack900),
                                Padding(
                                    padding: getPadding(bottom: 3),
                                    child: Text("See all",
                                        style:
                                            CustomTextStyles.bodySmallCyan300))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 21, top: 26),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Expanded(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapDrugs1(context);
                                              },
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 9,
                                                      right: 7,
                                                      bottom: 9),
                                                  decoration: AppDecoration
                                                      .outlineBlueGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgkunkumadi,
                                                            height: getSize(50),
                                                            width: getSize(50),
                                                            alignment: Alignment
                                                                .center,
                                                            margin: getMargin(
                                                                top: 15)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                top: 29),
                                                            child: Text(
                                                                "KUNKUMADI TAILAM",
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1),
                                                            child: Text("10ml",
                                                                style: CustomTextStyles
                                                                    .labelSmall9)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                top: 5),
                                                            child: Row(
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Rs.499",
                                                                          style:
                                                                              CustomTextStyles.titleSmallBlack900)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgPlus,
                                                                      height:
                                                                          getSize(
                                                                              18),
                                                                      width:
                                                                          getSize(
                                                                              18),
                                                                      margin: getMargin(
                                                                          left:
                                                                              38))
                                                                ]))
                                                      ]))),
                                          Container(
                                              margin: getMargin(left: 21),
                                              padding: getPadding(all: 7),
                                              decoration: AppDecoration
                                                  .outlineBlueGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgchavan,
                                                        height: getSize(50),
                                                        width: getSize(50),
                                                        alignment:
                                                            Alignment.center,
                                                        margin:
                                                            getMargin(top: 17)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 29),
                                                        child: Text(
                                                            "CHYAVANAPRASAM",
                                                            style: CustomTextStyles
                                                                .labelLargeBlack900)),
                                                    Text("500GM",
                                                        style: CustomTextStyles
                                                            .labelSmall9),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 8),
                                                        child: Row(children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "Rs.230",
                                                                  style: CustomTextStyles
                                                                      .titleSmallBlack900)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgPlus,
                                                              height:
                                                                  getSize(18),
                                                              width:
                                                                  getSize(18),
                                                              margin: getMargin(
                                                                  left: 47))
                                                        ]))
                                                  ]))
                                        ])),
                                    Container(
                                        margin: getMargin(left: 17),
                                        padding: getPadding(all: 7),
                                        decoration: AppDecoration
                                            .outlineBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgnilgiri,
                                                  height: getSize(50),
                                                  width: getSize(50),
                                                  alignment: Alignment.center,
                                                  margin: getMargin(top: 17)),
                                              Padding(
                                                  padding: getPadding(top: 28),
                                                  child: Text(
                                                      "NILIBHRINGADI TAILAM",
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("200ML",
                                                      style: CustomTextStyles
                                                          .labelSmall9)),
                                              Padding(
                                                  padding: getPadding(top: 7),
                                                  child: Row(children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text("Rs.250",
                                                            style: CustomTextStyles
                                                                .titleSmallBlack900)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgPlus,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        margin:
                                                            getMargin(left: 45))
                                                  ]))
                                            ]))
                                  ])))),
                      Padding(
                          padding: getPadding(left: 20, top: 19, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Product on Sale",
                                    style:
                                        CustomTextStyles.titleMediumBlack900),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 2),
                                    child: Text("See all",
                                        style:
                                            CustomTextStyles.bodySmallCyan300))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 21, top: 14),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Expanded(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapDrugs4(context);
                                              },
                                              child: Container(
                                                  padding: getPadding(all: 7),
                                                  decoration: AppDecoration
                                                      .outlineBlueGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          height: 80,
                                                          width: 80,
                                                          child: CircleAvatar(
                                                            backgroundImage:
                                                                NetworkImage(
                                                                    "https://cdn.banyanbotanicals.com/media/catalog/product/cache/aec0522aa60909430cc6d2f1819fa10d/g/o/gokshuradi-guggulu-tablets-2061-lightbox-web-v001_1.jpg"),
                                                          ),
                                                        ),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 28),
                                                            child: Text(
                                                                " GOKSHURADI",
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900)),
                                                        Text("50tbs",
                                                            style:
                                                                CustomTextStyles
                                                                    .labelSmall9),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 6),
                                                            child: Row(
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "Rs.250",
                                                                          style:
                                                                              CustomTextStyles.titleSmallBlack900)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgPlus,
                                                                      height:
                                                                          getSize(
                                                                              18),
                                                                      width:
                                                                          getSize(
                                                                              18),
                                                                      margin: getMargin(
                                                                          left:
                                                                              45))
                                                                ]))
                                                      ]))),
                                          Container(
                                              margin: getMargin(left: 17),
                                              padding: getPadding(all: 7),
                                              decoration: AppDecoration
                                                  .outlineBlueGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      height: 80,
                                                      width: 80,
                                                      child: CircleAvatar(
                                                        backgroundImage:
                                                            NetworkImage(
                                                                "https://cdn.banyanbotanicals.com/media/catalog/product/cache/aec0522aa60909430cc6d2f1819fa10d/a/s/ashwagandha-tablets-1021-lightbox-web-v001_1.jpg"),
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 28),
                                                        child: Text(
                                                            "Ashwagandha tablets",
                                                            style: CustomTextStyles
                                                                .labelLargeBlack900)),
                                                    Text("100tbs",
                                                        style: CustomTextStyles
                                                            .labelSmall9),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Row(children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "Rs.450",
                                                                  style: CustomTextStyles
                                                                      .titleSmallBlack900)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgPlus,
                                                              height:
                                                                  getSize(18),
                                                              width:
                                                                  getSize(18),
                                                              margin: getMargin(
                                                                  left: 45))
                                                        ]))
                                                  ]))
                                        ])),
                                    Container(
                                        margin: getMargin(left: 17),
                                        padding: getPadding(all: 7),
                                        decoration: AppDecoration
                                            .outlineBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: 80,
                                                width: 80,
                                                child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      "https://cdn.banyanbotanicals.com/media/catalog/product/cache/509d1e985b910341455ea4e18b15e283/n/a/nasya-oil-3181-lightbox-web-v001_1.jpeg"),
                                                ),
                                              ),
                                              Padding(
                                                  padding: getPadding(top: 28),
                                                  child: Text("Nasya",
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              Text("25ml",
                                                  style: CustomTextStyles
                                                      .labelSmall9),
                                              Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Row(children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text("Rs.230",
                                                            style: CustomTextStyles
                                                                .titleSmallBlack900)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgPlus,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        margin:
                                                            getMargin(left: 47))
                                                  ]))
                                            ]))
                                  ]))))
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

  /// Navigates to the drugDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the drugDetailsScreen.
  onTapDrugs1(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DrugDetailsScreen()),
    );
  }

  /// Navigates to the drugDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the drugDetailsScreen.
  onTapDrugs4(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DrugDetailsScreen()),
    );
  }
}
