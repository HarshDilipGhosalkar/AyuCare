import 'package:veda/maps.dart';
import 'package:veda/meet.dart';
import 'package:veda/presentation/pharmacy_screen/pharmacy_screen.dart';
// import 'package:veda/room/code.dart';

import '../dashboard_page/widgets/dashboard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:veda/core/app_export.dart';
import 'package:veda/widgets/app_bar/appbar_image.dart';
import 'package:veda/widgets/app_bar/appbar_title.dart';
import 'package:veda/widgets/app_bar/custom_app_bar.dart';
import 'package:veda/widgets/custom_elevated_button.dart';
import 'package:veda/widgets/custom_icon_button.dart';
import 'package:veda/widgets/custom_search_view.dart';

import '../doctor_details/doctor_details.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  List images = [
    "https://imagesx.practo.com/providers/dr-jyoti-r-jangale-ayurveda-mumbai-e1548ee9-8124-4842-9934-67d302bc7988.jpg?i_type=t_70x70-2x-webp",
    "https://imagesx.practo.com/providers/dr-varsha-gupta-ayurveda-mumbai-ce663a57-a96a-4fb5-ba87-44d79a976091.jpg?i_type=t_70x70-2x-webp",
    "https://imagesx.practo.com/providers/dr-arun-kumar-ayurveda-mumbai-2bfa1c4b-1ea3-440e-ac1c-b73e7269a078.jpg?i_type=t_70x70-2x-webp",
    "https://imagesx.practo.com/providers/dr-amit-aroskar-ayurveda-mumbai-28e57a84-8f37-4585-8e8e-55b61633a1bd.jpg?i_type=t_70x70-2x-webp",
  ];
  List names = [
    "Dr. Jyoti Jangale",
    "Dr. Varsha Gupta",
    "Dr. Arun Kumar",
    "Dr. Amit Aroskar"
  ];
  List description = [
    "Dr. Jyoti R Jangale says is practicing Ayurveda since last 13 years.",
    "Dr. Varsha Gupta is a Ayurveda in Ghatkopar West, Mumbai and has an experience of 15 years in this field. Dr. Varsha Gupta practices at Herbal Ayurvedic & PanchKarma Centre in Ghatkopar West, Mumbai. She completed BAMS from Gurukula Kangri Vishwavidyalaya, Haridwar in 2006. Some of the services provided by the doctor are: Digestive diseases,Arthritis and Pain Management,Hair Loss Treatment,Weight Loss Treatment and Migraine Treatment etc.",
    "Dr. A. Kumar is a highly qualified Internationally renowned Ayurvedic Sex Specialist / Sexologist / Sex Counsellor & Sex Therapist who has started his work in the year of 1990 as a Sexologist / Sex Specialist, to serve patients suffering from Sex Problems, Poor Health, Sexual Diseases & Myths.He has an Experience of about 30 Years & has given Successful Consultations, Counselling & Treatment to more than 5 - 6 lacs of patients. ",
    "Practicing Ayurvedic Physician with 23 years of experience in handling chronic and recurrent health ailments, Diabetes, Heart Disease, Chronic Gastro Intestinal Disorders and Chronic Skin diseases . At Aamod our first objective is to try and go to the source or etiological factor which is predisposing the disease and try to correct the same. This is followed by corrective actions in-form of panchakarma or conventional Ayurvedic Shaman (balancing) treatment. We believe in holistic management which involves Diet, Physical regimen, Seasonal regimen and medication"
  ];
  List ratings = ["4.5", "4.3", "4.2", "3.7"];
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(126),
                title: AppbarTitle(
                    text: "Find Ayurveda Solution",
                    margin: getMargin(left: 20)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgNotificationicon,
                      margin:
                          getMargin(left: 20, top: 16, right: 20, bottom: 19))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 20),
                    child: Padding(
                        padding: getPadding(left: 20, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomSearchView(
                                  margin: getMargin(right: 20),
                                  controller: searchController,
                                  hintText: "Search doctor, drugs, articles...",
                                  autofocus: false,
                                  hintStyle: theme.textTheme.bodySmall!,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 17,
                                          top: 10,
                                          right: 12,
                                          bottom: 9),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(40)),
                                  suffix: Padding(
                                      padding: EdgeInsets.only(
                                          right: getHorizontalSize(15)),
                                      child: IconButton(
                                          onPressed: () {
                                            searchController.clear();
                                          },
                                          icon: Icon(Icons.clear,
                                              color: Colors.grey.shade600)))),
                              Padding(
                                  padding:
                                      getPadding(top: 20, right: 20, left: 50),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: getSize(71),
                                        width: getSize(71),
                                        padding: getPadding(all: 16),
                                        decoration:
                                            IconButtonStyleHelper.fillCyan,
                                        onTap: () {
                                          onTapBtnUserone(context);
                                        },
                                        child: CustomImageView(
                                            imagePath: ImageConstant.expert)),
                                    CustomIconButton(
                                        height: getSize(71),
                                        width: getSize(71),
                                        margin: getMargin(left: 17),
                                        padding: getPadding(all: 14),
                                        decoration:
                                            IconButtonStyleHelper.fillCyan,
                                        onTap: () {
                                          onTapBtnCalculatorone(context);
                                        },
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.marketplace)),
                                    CustomIconButton(
                                        height: getSize(71),
                                        width: getSize(71),
                                        margin: getMargin(left: 17),
                                        padding: getPadding(all: 15),
                                        decoration:
                                            IconButtonStyleHelper.fillCyan,
                                        onTap: () {
                                          onTapBtnAmbulanceone(context);
                                        },
                                        child: CustomImageView(
                                            imagePath: ImageConstant.nearby)),
                                  ])),
                              Container(
                                  width: getHorizontalSize(335),
                                  margin: getMargin(top: 20, right: 20),
                                  padding: getPadding(
                                      left: 25, top: 11, right: 25, bottom: 11),
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(186),
                                            margin: getMargin(left: 1, top: 3),
                                            child: Text(
                                                "Ayurvedic Protection for your family health",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.titleLarge!
                                                    .copyWith(height: 1.25))),
                                        CustomElevatedButton(
                                            height: getVerticalSize(29),
                                            width: getHorizontalSize(108),
                                            text: "Learn more",
                                            margin: getMargin(top: 6),
                                            buttonTextStyle: CustomTextStyles
                                                .labelLargePrimary)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 39, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Top Ayurveda Experts",
                                            style: theme.textTheme.titleMedium),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeall(context);
                                            },
                                            child: Padding(
                                                padding: getPadding(bottom: 3),
                                                child: Text("See all",
                                                    style: CustomTextStyles
                                                        .bodySmallCyan300)))
                                      ])),
                              SizedBox(
                                  height: getVerticalSize(186),
                                  child: ListView.separated(
                                      padding: getPadding(top: 13),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            width: getHorizontalSize(14));
                                      },
                                      itemCount: images.length,
                                      itemBuilder: (context, index) {
                                        return DashboardItemWidget(
                                            image: images[index],
                                            names: names[index],
                                            rating: ratings[index],
                                            onTapDoctor: () {
                                              onTapDoctor(
                                                context,
                                                names[index],
                                                ratings[index],
                                                description[index],
                                                images[index],
                                              );
                                            });
                                      })),
                              Padding(
                                  padding: getPadding(top: 28, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Ayurveda Articles",
                                            style: theme.textTheme.titleMedium),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeallone(context);
                                            },
                                            child: Padding(
                                                padding: getPadding(top: 3),
                                                child: Text("See all",
                                                    style: CustomTextStyles
                                                        .bodySmallCyan300)))
                                      ])),
                              Container(
                                  margin: getMargin(top: 15, right: 20),
                                  padding: getPadding(all: 6),
                                  decoration: AppDecoration.outlineBluegray50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgThumbnail,
                                            height: getSize(55),
                                            width: getSize(55)),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 7, bottom: 7),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                      width: getHorizontalSize(
                                                          179),
                                                      child: Text(
                                                          "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .labelMediumPrimaryContainer)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "Jun 10, 2021 ",
                                                                style: theme
                                                                    .textTheme
                                                                    .labelSmall),
                                                            Container(
                                                                height:
                                                                    getSize(2),
                                                                width:
                                                                    getSize(2),
                                                                margin:
                                                                    getMargin(
                                                                        left: 5,
                                                                        top: 3,
                                                                        bottom:
                                                                            4),
                                                                decoration: BoxDecoration(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .errorContainer,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(1)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            5),
                                                                child: Text(
                                                                    "5min read",
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelSmall))
                                                          ]))
                                                ]))
                                      ]))
                            ]))))));
  }

  onTapBtnUserone(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Meet()));
  }

  /// Navigates to the pharmacyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the pharmacyScreen.
  onTapBtnCalculatorone(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PharmacyScreen()),
    );
  }

  onTapBtnAmbulanceone(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Maps()),
    );
  }

  onTapBtnArticalsicon(BuildContext context) {}
  onTapTxtSeeall(BuildContext context) {}
  onTapTxtSeeallone(BuildContext context) {}

  onTapDoctor(BuildContext context, String name, String rating,
      String description, String image) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DrDetailsScreen(
                name: name,
                rating: rating,
                description: description,
                image: image)));
  }
}
