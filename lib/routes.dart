import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/Serv_Complete_profile/Serv_complete_profile_screen.dart';
import 'package:shop_app/screens/Serv_login/Serv_login_screen.dart';
import 'package:shop_app/screens/Serv_login_success/Serv_login_success_screen.dart';
import 'package:shop_app/screens/Serv_signUp/Serv_sign_up_screen.dart';
import 'package:shop_app/screens/Serv_signUp_success/Serv_signup_success.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/choice/02choice.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/customer_home/customer_home_screen.dart';
import 'package:shop_app/screens/customer_login_success/customer_login_success_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/customer_login/customer_login_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'screens/customer_signup/customer_sign_up_screen.dart';
import 'package:shop_app/screens/customer_sign_up_success/customer_signup_success.dart';
import 'package:shop_app/screens/request/request_screen1.dart';
import 'package:shop_app/screens/request/request_details_screen.dart';
import 'package:shop_app/screens/request/request_success.dart';
import 'package:shop_app/screens/prev_requests/prev_requests.dart';
import 'package:shop_app/screens/chat/chat.dart';
import 'package:shop_app/screens/serv_home/home_screen.dart';
import 'package:shop_app/screens/bottom_nav_screen.dart';
//import 'package:shop_app/screens/Serv_login_success_screen';
// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  CustomerLogInScreen.routeName: (context) => CustomerLogInScreen(),
  BottomNavScreen.routeName: (context) => BottomNavScreen(),
  ServLogInScreen.routeName: (context) => ServLogInScreen(),
  ServLoginSuccessScreen.routeName: (context) => ServLoginSuccessScreen(),
  SverSignUpScreen.routeName: (context) => SverSignUpScreen(),
  ServCompleteProfileScreen.routeName: (context) => ServCompleteProfileScreen(),
  ServSignUpSuccessScreen.routeName: (context) => ServSignUpSuccessScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  CustomerLoginSuccessScreen.routeName: (context) =>
      CustomerLoginSuccessScreen(),
  CustomerSignUpScreen.routeName: (context) => CustomerSignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  CustomerHomeScreen.routeName: (context) => CustomerHomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ChoiceScreen.routeName: (context) => ChoiceScreen(),
  CustomerSignUpSuccessScreen.routeName: (context) =>
      CustomerSignUpSuccessScreen(),
  CustomerRequest.routeName: (context) => CustomerRequest(),
  RequestDetails.routeName: (context) => RequestDetails(),
  RequestSuccess.routeName: (context) => RequestSuccess(),
  PrevRequests.routName: (context) => PrevRequests(),
  Chat.routName: (context) => Chat(),
};
