import 'package:flutter/material.dart';
import 'package:veda/core/app_export.dart';
import 'package:veda/presentation/schedule_page/schedule_page.dart';
import 'package:veda/widgets/app_bar/appbar_title.dart';
import 'package:veda/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ScheduleTabContainerPage extends StatefulWidget {
  const ScheduleTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  ScheduleTabContainerPageState createState() =>
      ScheduleTabContainerPageState();
}

class ScheduleTabContainerPageState extends State<ScheduleTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(
          title: AppbarTitle(
            text: "Schedule",
            margin: getMargin(
              left: 21,
            ),
          ),
          actions: [
            Container(
              height: getVerticalSize(27),
              width: getHorizontalSize(24),
              margin: getMargin(
                left: 20,
                top: 13,
                right: 20,
                bottom: 16,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgMoreicon,
                    height: getVerticalSize(16),
                    width: getHorizontalSize(4),
                    alignment: Alignment.topRight,
                    margin: getMargin(
                      left: 20,
                      bottom: 11,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgIconlylightnotification,
                    height: getSize(24),
                    width: getSize(24),
                    alignment: Alignment.center,
                    margin: getMargin(
                      top: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  height: getVerticalSize(575),
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      SchedulePage(),
                      SchedulePage(),
                      SchedulePage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
