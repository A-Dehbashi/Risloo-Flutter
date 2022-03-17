import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:risloo_flutter/utils/res/res_strings.dart';

import 'package:risloo_flutter/views/fragments/fragment_bulks.dart';
import 'package:risloo_flutter/views/fragments/fragment_centers.dart';
import 'package:risloo_flutter/views/fragments/fragment_dashboard.dart';
import 'package:risloo_flutter/views/fragments/fragment_downloads.dart';
import 'package:risloo_flutter/views/fragments/fragment_samples.dart';
import 'package:risloo_flutter/views/fragments/fragment_scales.dart';
import 'package:risloo_flutter/views/fragments/fragment_sessions.dart';
import 'package:risloo_flutter/views/fragments/fragment_users.dart';

class ResLists {

  // Drawer Lists
  //////////////////////////////////////////////////

  static const List<Widget> drawerRoutes = [
    FragmentDashboard(),
    FragmentCenters(),
    FragmentSessions(),
    FragmentUsers(),
    FragmentSamples(),
    FragmentBulks(),
    FragmentScales(),
    FragmentDownloads(),
  ];

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
    FontAwesomeIcons.tachometerAlt,
    FontAwesomeIcons.building,
    FontAwesomeIcons.userFriends,
    FontAwesomeIcons.users,
    FontAwesomeIcons.vial,
    FontAwesomeIcons.usersCog,
    FontAwesomeIcons.balanceScale,
    FontAwesomeIcons.arrowAltCircleDown,
  ];

  //////////////////////////////////////////////////

}