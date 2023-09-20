import 'package:flutter/material.dart';
import 'package:veda/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:veda/presentation/book_an_appointment_screen/book_an_appointment_screen.dart';
import 'package:veda/presentation/pharmacy_screen/pharmacy_screen.dart';
import 'package:veda/presentation/drug_details_screen/drug_details_screen.dart';
import 'package:veda/presentation/cart_screen/cart_screen.dart';

class AppRoutes {
  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String bookAnAppointmentScreen = '/book_an_appointment_screen';

  static const String settignsPage = '/settigns_page';

  static const String pharmacyScreen = '/pharmacy_screen';

  static const String drugDetailsScreen = '/drug_details_screen';

  static const String cartScreen = '/cart_screen';

  static const String schedulePage = '/schedule_page';

  static const String scheduleTabContainerPage = '/schedule_tab_container_page';
  static const String meet = '/meet';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    dashboardContainerScreen: (context) => DashboardContainerScreen(),
    bookAnAppointmentScreen: (context) => BookAnAppointmentScreen(),
    pharmacyScreen: (context) => PharmacyScreen(),
    drugDetailsScreen: (context) => DrugDetailsScreen(),
    cartScreen: (context) => CartScreen(),
  };
}
