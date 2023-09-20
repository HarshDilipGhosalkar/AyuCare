import 'package:flutter/material.dart';
import 'package:veda/core/app_export.dart';
import 'package:veda/presentation/schedule_page/schedule_page.dart';
import 'package:veda/presentation/schedule_page/widgets/schedule_item_widget.dart';
import 'package:veda/widgets/app_bar/appbar_image_1.dart';
import 'package:veda/widgets/app_bar/appbar_subtitle.dart';
import 'package:veda/widgets/app_bar/custom_app_bar.dart';
import 'package:veda/widgets/custom_elevated_button.dart';
import 'package:veda/widgets/custom_icon_button.dart';

// import '../../calls/rooms.dart';

class BookAnAppointmentScreen extends StatelessWidget {
  final String? name;
  final String? image;
  final String? rating;
  const BookAnAppointmentScreen({Key? key, this.name, this.image, this.rating})
      : super(key: key);

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
                title: AppbarSubtitle(text: "Apointment")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 18, top: 23, right: 18, bottom: 23),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                            margin: getMargin(left: 2),
                            padding: getPadding(all: 7),
                            decoration: AppDecoration.outlineBluegray50
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                            child: Row(children: [
                              Container(
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(image!),
                                  ),
                                  height: getSize(111),
                                  width: getSize(111)),
                              Padding(
                                  padding:
                                      getPadding(left: 19, top: 8, bottom: 4),
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
                                            child: Text("Ayurveda",
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        Padding(
                                            padding:
                                                getPadding(left: 3, top: 15),
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
                                            padding: getPadding(top: 9),
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
                      ),
                      Padding(
                          padding: getPadding(left: 2, top: 16, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date",
                                    style: theme.textTheme.titleMedium),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("Change",
                                        style: theme.textTheme.bodySmall))
                              ])),
                      Padding(
                          padding: getPadding(left: 2, top: 9, right: 36),
                          child: Row(children: [
                            CustomIconButton(
                                height: getSize(36),
                                width: getSize(36),
                                padding: getPadding(all: 8),
                                decoration:
                                    IconButtonStyleHelper.fillBlueGrayTL18,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgCalendar)),
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 9, bottom: 9),
                                child: Text("Saturday, Sep 16, 2023 | 12:00 PM",
                                    style: CustomTextStyles
                                        .titleSmallPrimaryContainer))
                          ])),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Divider(indent: getHorizontalSize(2))),
                      Padding(
                          padding: getPadding(left: 2, top: 15),
                          child: Text("Payment Detail",
                              style: theme.textTheme.titleMedium)),
                      Padding(
                          padding: getPadding(left: 2, top: 13, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Consultation",
                                    style: theme.textTheme.bodyMedium),
                                Text("500.00",
                                    style: theme.textTheme.bodyMedium)
                              ])),
                      Padding(
                          padding: getPadding(left: 2, top: 11, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Admin Fee",
                                    style: theme.textTheme.bodyMedium),
                                Text("01.00", style: theme.textTheme.bodyMedium)
                              ])),
                      Padding(
                          padding: getPadding(left: 2, top: 11, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Aditional Discount",
                                    style: theme.textTheme.bodyMedium),
                                Text("-", style: theme.textTheme.bodyMedium)
                              ])),
                      Padding(
                          padding: getPadding(left: 2, top: 11, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total",
                                    style: CustomTextStyles
                                        .titleSmallPrimaryContainer),
                                Text("Rs.501.00",
                                    style: CustomTextStyles
                                        .titleSmallPrimaryContainer)
                              ])),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Divider(indent: getHorizontalSize(2))),
                      Padding(
                          padding: getPadding(left: 2, top: 15),
                          child: Text("Payment Method",
                              style: theme.textTheme.titleMedium)),
                      Container(
                          margin: getMargin(top: 13, right: 5),
                          padding: getPadding(all: 14),
                          decoration: AppDecoration.outlineBluegray50.copyWith(
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
                                    child: Text(" Rs.501.00",
                                        style: CustomTextStyles.titleMedium18))
                              ])),
                      CustomElevatedButton(
                        width: getHorizontalSize(192),
                        text: "Booking",
                        onTap: () => {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.black87,
                              content: Text('Booking Done'),
                              duration: Duration(
                                  seconds:
                                      3), // How long the SnackBar will be displayed
                              action: SnackBarAction(
                                label: 'CLOSE',
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                },
                              ),
                            ),
                          ),
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SchedulePage()))
                        },
                      )
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
