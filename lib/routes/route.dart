import 'package:cash_ease_mobile_app/features/home/ui/home.dart';
import 'package:cash_ease_mobile_app/features/transfer/ui/recipient.dart';
import 'package:cash_ease_mobile_app/features/transfer/ui/transfer.dart';
import 'package:cash_ease_mobile_app/features/transfer/ui/transfer_bank.dart';
import 'package:cash_ease_mobile_app/features/transfer/ui/transfer_friends.dart';
import 'package:cash_ease_mobile_app/features/transfer/ui/transfer_successful.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final String homeRoute = "/";
final String transferRoute = "/transfer";
final String transferToFriends = "/transfer_friends";
final String recipient = "/recipient";
final String transferSuccess = "/transfer_success";
final String transferToBank = "/transfer_bank";

final GoRouter appRoutes = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: homeRoute,
    builder: (BuildContext context, GoRouterState state) {
      return Home();
    },
  ),
  GoRoute(
    path: transferRoute,
    builder: (BuildContext context, GoRouterState state) {
      return Transfer();
    },
  ),
  GoRoute(
    path: transferToFriends,
    builder: (BuildContext context, GoRouterState state) {
      return TransferToFriends();
    },
  ),
  GoRoute(
      path: recipient,
      builder: (BuildContext context, GoRouterState state) {
        return SelectedRecipient();
      }),
  GoRoute(
      path: transferSuccess,
      builder: (BuildContext context, GoRouterState state) {
        return TransferSuccessful();
      }),
  GoRoute(
      path: transferToBank,
      builder: (BuildContext context, GoRouterState state) {
        return TransferToBankRecipient();
      })
]);
