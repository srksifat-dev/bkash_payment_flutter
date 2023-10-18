import 'package:bkash_payment_flutter/features/checkout/screens/checkout_screen.dart';
import 'package:bkash_payment_flutter/features/payment/screens/payment_screen.dart';
import 'package:bkash_payment_flutter/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> routes = [
  GoRoute(
    path: "/",
    name: RouteName.checkoutScreen,
    pageBuilder: (context, state) =>
        const MaterialPage(child: CheckoutScreen(),),
  ),
  GoRoute(
    path: "/payment",
    name: RouteName.paymentScreen,
    pageBuilder: (context, state) =>
        MaterialPage(child: PaymentScreen(bKashURL: state.extra as String,),),
  ),
];
