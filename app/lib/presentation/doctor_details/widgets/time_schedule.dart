import 'package:veda/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable

class TimeslotsItemWidget extends StatelessWidget {
  final String? time;
  const TimeslotsItemWidget({Key? key, this.time})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: RawChip(
          padding: getPadding(
            left: 23,
            top: 11,
            right: 23,
            bottom: 11,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            "$time",
            style: TextStyle(
              color: theme.colorScheme.primaryContainer,
              fontSize: getFontSize(
                12,
              ),
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: false,
          backgroundColor: theme.colorScheme.primary,
          selectedColor: appTheme.cyan300,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.teal100,
              width: getHorizontalSize(1),
            ),
            borderRadius: BorderRadius.circular(
              getHorizontalSize(10),
            ),
          ),
          onSelected: (value) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.black87,
                content: Text('Appointment time: $time'),
                duration: Duration(
                    seconds: 3), // How long the SnackBar will be displayed
                action: SnackBarAction(
                  label: 'CLOSE',
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
