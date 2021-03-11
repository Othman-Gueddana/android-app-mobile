import 'package:flutter/material.dart';
import 'package:sonede/screens/bills.dart';
import 'package:sonede/screens/contracts.dart';
import 'package:sonede/screens/history_details.dart';
import 'package:sonede/screens/home-page.dart';
import 'package:sonede/screens/profile.dart';
import 'package:sonede/screens/register.dart';
import 'package:sonede/screens/requests.dart';
import 'package:sonede/screens/show-screen.dart';

Map<String, WidgetBuilder> routes = {
  "/": (context) => HomePage(),
  "/showScreens": (context) => ShowScreen(),
  "/profile": (context) => Profile(),
  "/contracts": (context) => Contracts(),
  "/requests": (context) => Requests(),
  "/bills": (context) => Bills(),
  "/history": (context) => HistoryDetailsScreen(),
  "/register": (context) => Register(),
};
