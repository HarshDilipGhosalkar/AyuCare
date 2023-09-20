import '../schedule_page/widgets/schedule_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:veda/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatefulWidget {
  SchedulePage({Key? key})
      : super(
          key: key,
        );

  @override
  SchedulePageState createState() => SchedulePageState();
}

class SchedulePageState extends State<SchedulePage>
    with AutomaticKeepAliveClientMixin<SchedulePage> {
  @override
  bool get wantKeepAlive => true;
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
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Padding(
            padding: getPadding(
              left: 20,
              top: 30,
              right: 20,
            ),
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: getVerticalSize(20),
                );
              },
              itemCount: 2,
              itemBuilder: (context, index) {
                return ScheduleItemWidget(
                    name: names[index], image: images[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
