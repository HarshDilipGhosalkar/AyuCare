import 'package:flutter/material.dart';
import 'package:veda/core/app_export.dart';
import 'package:veda/core/utils/image_doctors_constants.dart';

// ignore: must_be_immutable
class DashboardItemWidget extends StatelessWidget {
  final String? image;
  final String? names;
  final String? rating;
  DashboardItemWidget({
    Key? key,
    this.image,
    this.names,
    this.rating,
    this.onTapDoctor,
  }) : super(
          key: key,
        );

  VoidCallback? onTapDoctor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(118),
      child: GestureDetector(
        onTap: () {
          onTapDoctor?.call();
        },
        child: Container(
          padding: getPadding(
            left: 7,
            top: 12,
            right: 7,
            bottom: 12,
          ),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80.0, // Set your desired width
                height: 80.0, // Set your desired height
                child: CircleAvatar(backgroundImage: NetworkImage(image!)),
              ),

              // CustomImageView(
              //   imagePath: Doctors.doctorshruti,
              //   height: getSize(68),
              //   width: getSize(68),
              //   alignment: Alignment.center,
              //   margin: getMargin(
              //     top: 10,
              //   ),
              // ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 17,
                ),
                child: Text(
                  "$names",
                  style: CustomTextStyles.labelLargePrimaryContainer,
                ),
              ),

              Padding(
                padding: getPadding(
                  left: 1,
                  top: 8,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgStar,
                      height: getSize(20),
                      width: getSize(20),
                      margin: getMargin(
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 2,
                        top: 2,
                      ),
                      child: Text(
                        "$rating",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
