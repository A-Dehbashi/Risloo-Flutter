import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:risloo_flutter/utils/res/res_routes.dart';
import 'package:risloo_flutter/utils/res/res_strings.dart';

class ResLists {

  // Drawer Lists
  //////////////////////////////////////////////////

  static const List<String> drawerTitles = [
    ResStrings.drawerTitleDashboard,
    ResStrings.drawerTitleCenters,
    ResStrings.drawerTitleSessions,
    ResStrings.drawerTitleUsers,
    ResStrings.drawerTitleSamples,
    ResStrings.drawerTitleBulks,
    ResStrings.drawerTitleScales,
    ResStrings.drawerTitleDownloads,
  ];

  static const List<String> drawerDescs = [
    ResStrings.drawerDescDashboard,
    ResStrings.drawerDescCenters,
    ResStrings.drawerDescSessions,
    ResStrings.drawerDescUsers,
    ResStrings.drawerDescSamples,
    ResStrings.drawerDescBulks,
    ResStrings.drawerDescScales,
    ResStrings.drawerDescDownloads,
  ];

  static const List<IconData> drawerIcons = [
    FontAwesomeIcons.gaugeHigh,
    FontAwesomeIcons.building,
    FontAwesomeIcons.userGroup,
    FontAwesomeIcons.users,
    FontAwesomeIcons.vial,
    FontAwesomeIcons.usersGear,
    FontAwesomeIcons.scaleBalanced,
    FontAwesomeIcons.circleDown,
  ];

  static const List<String> drawerRoutes = [
    ResRoutes.fragmentHomeDashboard,
    ResRoutes.fragmentHomeCenters,
    ResRoutes.fragmentHomeSessions,
    ResRoutes.fragmentHomeUsers,
    ResRoutes.fragmentHomeSamples,
    ResRoutes.fragmentHomeBulks,
    ResRoutes.fragmentHomeScales,
    ResRoutes.fragmentHomeDownloads,
  ];

  //////////////////////////////////////////////////

  // Toolbar Lists
  //////////////////////////////////////////////////

  static const List<String> toolbarTitles = [
    ResStrings.toolbarTitleMe,
    ResStrings.toolbarTitleAccounting,
    ResStrings.toolbarTitlePayments,
    ResStrings.toolbarTitleLogout,
  ];

  //////////////////////////////////////////////////

}