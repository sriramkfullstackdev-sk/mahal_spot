import 'package:flutter/material.dart';
import '../screens/availability/availability_page.dart';
import '../screens/booking/booking_page.dart';
import '../screens/booking_form/booking_form_page.dart';
import '../screens/payment/payment_page.dart';
import '../screens/user_details/user_details_page.dart';
import '../screens/otp/otp_page.dart';
import '../screens/verify_otp/verify_otp_page.dart';
import '../screens/home/home_page.dart';

class AppRoutes {
  static const String otpPage = "/otpPage";
  static const String verifyOtpPage = "/verifyOtpPage";
  static const String homePage = "/homePage";
  static const String bookingPage = "/bookingPage";
  static const String availabilityPage = "/availabilityPage";
  static const String bookingFormPage = "/bookingFormPage";
  static const String paymentPage = "/paymentPage";
  static const String userDetailsPage = "/userDetailsPage";

  static Map<String, WidgetBuilder> routes = {
    otpPage: (context) => const OtpPage(),

    verifyOtpPage: (context) => const VerifyOtpPage(),
    homePage: (context) => const HomePage(),
    bookingPage: (context) => const BookingPage(),
    availabilityPage: (context) => const AvailabilityPage(),
    bookingFormPage: (context) => const BookingFormPage(),
    paymentPage: (context) => const PaymentPage(),
    userDetailsPage: (context) => const UserDetailsPage(),
  };
}
