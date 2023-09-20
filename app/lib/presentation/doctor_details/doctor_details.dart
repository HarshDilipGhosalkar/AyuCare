import 'package:veda/presentation/book_an_appointment_screen/book_an_appointment_screen.dart';

import '../doctor_details/widgets/time_schedule.dart';
import 'package:veda/core/app_export.dart';
import 'package:veda/widgets/app_bar/appbar_image.dart';
import 'package:veda/widgets/app_bar/appbar_image_1.dart';
import 'package:veda/widgets/app_bar/appbar_subtitle.dart';
import 'package:veda/widgets/app_bar/custom_app_bar.dart';
import 'package:veda/widgets/custom_elevated_button.dart';
import 'package:veda/widgets/custom_floating_text_field.dart';
import 'package:veda/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

// ignore_for_file: must_be_immutable
class DrDetailsScreen extends StatelessWidget {
  final String? name;
  final String? rating;
  final String? description;
  final String? image;
  DrDetailsScreen(
      {Key? key, this.name, this.rating, this.description, this.image})
      : super(key: key);

  TextEditingController dateController = TextEditingController();

  TextEditingController datetwoController = TextEditingController();

  List time = ["9:00 AM", "12:00 PM", "4:00 PM", "6:30 PM"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Expanded(
      child: SafeArea(
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
                  title: AppbarSubtitle(text: "Doctor detail"),
                  actions: [
                    AppbarImage(
                        svgPath: ImageConstant.imgCart,
                        margin: getMargin(all: 20))
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 24, bottom: 24),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: getMargin(left: 20, right: 20),
                            padding: getPadding(
                                left: 10, top: 6, right: 10, bottom: 6),
                            decoration: AppDecoration.outlineBluegray50
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                            child:
                                Row(mainAxisSize: MainAxisSize.max, children: [
                              Container(
                                width: 100.0, // Set your desired width
                                height: 100.0, // Set your desired height
                                child: CircleAvatar(
                                    backgroundImage: NetworkImage(image!)),
                              ),
                              Padding(
                                  padding:
                                      getPadding(left: 17, top: 8, bottom: 8),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("$name",
                                            style:
                                                CustomTextStyles.titleMedium18),
                                        Padding(
                                            padding: getPadding(top: 5),
                                            child: Text("Ayurvedic",
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        Padding(
                                            padding:
                                                getPadding(left: 3, top: 16),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgStar,
                                                  height: getSize(13),
                                                  width: getSize(13),
                                                  margin: getMargin(bottom: 2)),
                                              Padding(
                                                  padding: getPadding(left: 4),
                                                  child: Text("$rating",
                                                      style: CustomTextStyles
                                                          .labelLargeCyan300))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 8),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgLocation,
                                                  height: getSize(13),
                                                  width: getSize(13),
                                                  margin: getMargin(bottom: 2)),
                                              Padding(
                                                  padding: getPadding(left: 3),
                                                  child: Text("800m away",
                                                      style: theme.textTheme
                                                          .labelLarge))
                                            ]))
                                      ]))
                            ])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 21, top: 23),
                                child: Text("About",
                                    style: theme.textTheme.titleMedium))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: getHorizontalSize(313),
                                margin: getMargin(left: 21, top: 11),
                                child: ReadMoreText("$description",
                                    trimLines: 3,
                                    colorClickableText: appTheme.cyan300,
                                    trimMode: TrimMode.Line,
                                    trimCollapsedText: "Read more",
                                    moreStyle: theme.textTheme.bodySmall!
                                        .copyWith(height: 1.67),
                                    lessStyle: theme.textTheme.bodySmall!
                                        .copyWith(height: 1.67)))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: getPadding(left: 24, top: 33),
                                child: IntrinsicWidth(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      Container(
                                          margin: getMargin(left: 12),
                                          padding: getPadding(
                                              left: 11,
                                              top: 13,
                                              right: 11,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .outlineBlueGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(left: 2),
                                                    child: Text("Thu",
                                                        style: CustomTextStyles
                                                            .bodySmall10)),
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text("14",
                                                        style: CustomTextStyles
                                                            .titleMedium18))
                                              ])),
                                      Container(
                                          margin: getMargin(left: 12),
                                          padding: getPadding(
                                              left: 11,
                                              top: 13,
                                              right: 11,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .outlineBluegray50
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(left: 5),
                                                    child: Text("Fri",
                                                        style: CustomTextStyles
                                                            .bodySmall10)),
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text("15",
                                                        style: CustomTextStyles
                                                            .titleMedium18))
                                              ])),
                                      Container(
                                          margin: getMargin(left: 12),
                                          padding: getPadding(
                                              left: 11,
                                              top: 13,
                                              right: 11,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .gradientCyanToTeal
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text("Sat",
                                                        style: CustomTextStyles
                                                            .bodySmall10)),
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text("16",
                                                        style: CustomTextStyles
                                                            .titleMedium18))
                                              ])),
                                      Container(
                                          margin: getMargin(left: 12),
                                          padding: getPadding(
                                              left: 11,
                                              top: 14,
                                              right: 11,
                                              bottom: 14),
                                          decoration: AppDecoration
                                              .outlineBlueGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(left: 3),
                                                    child: Text("Sun",
                                                        style: CustomTextStyles
                                                            .bodySmall10)),
                                                Padding(
                                                    padding: getPadding(top: 2),
                                                    child: Text("17",
                                                        style: CustomTextStyles
                                                            .titleMedium18))
                                              ])),
                                      Container(
                                          margin: getMargin(left: 12),
                                          padding: getPadding(
                                              left: 11,
                                              top: 13,
                                              right: 11,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .outlineBlueGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(left: 2),
                                                    child: Text("Mon",
                                                        style: CustomTextStyles
                                                            .bodySmall10)),
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text("18",
                                                        style: CustomTextStyles
                                                            .titleMedium18))
                                              ])),
                                      Container(
                                          margin: getMargin(left: 12),
                                          padding: getPadding(
                                              left: 11,
                                              top: 13,
                                              right: 11,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .outlineBlueGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(left: 2),
                                                    child: Text("Tue",
                                                        style: CustomTextStyles
                                                            .bodySmall10)),
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text("19",
                                                        style: CustomTextStyles
                                                            .titleMedium18))
                                              ])),
                                      Container(
                                          margin: getMargin(left: 12),
                                          padding: getPadding(
                                              left: 11,
                                              top: 13,
                                              right: 11,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .outlineBlueGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(left: 2),
                                                    child: Text("Wed",
                                                        style: CustomTextStyles
                                                            .bodySmall10)),
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text("20",
                                                        style: CustomTextStyles
                                                            .titleMedium18))
                                              ]))
                                    ])))),
                        Padding(
                            padding: getPadding(top: 38),
                            child: Divider(
                                indent: getHorizontalSize(20),
                                endIndent: getHorizontalSize(20))),
                        Padding(
                            padding: getPadding(top: 37, bottom: 5),
                            child: Wrap(
                                runSpacing: getVerticalSize(13),
                                spacing: getHorizontalSize(13),
                                children: List<Widget>.generate(
                                    time.length,
                                    (index) => TimeslotsItemWidget(
                                          time: time[index],
                                        ))))
                      ])),
              bottomNavigationBar: Padding(
                  padding: getPadding(left: 20, right: 20, bottom: 28),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                            height: getSize(50),
                            width: getSize(50),
                            padding: getPadding(all: 13),
                            decoration: IconButtonStyleHelper.fillBlueGray,
                            onTap: () {
                              onTapBtnCarone(context);
                            },
                            child: CustomImageView(
                                svgPath: ImageConstant.imgCart)),
                        Expanded(
                            child: CustomElevatedButton(
                                text: "Book Apointment",
                                margin: getMargin(left: 19),
                                onTap: () {
                                  onTapBookapointment(
                                      context, name!, rating!, image!);
                                }))
                      ])))),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the chatScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the chatScreen.

  /// Navigates to the bookAnAppointmentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bookAnAppointmentScreen.
  onTapBookapointment(
      BuildContext context, String name, String rating, String image) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BookAnAppointmentScreen(
                name: name, rating: rating, image: image)));
  }

  onTapBtnCarone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookAnAppointmentScreen);
  }
}
