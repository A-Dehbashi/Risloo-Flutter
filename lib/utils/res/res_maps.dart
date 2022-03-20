import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_routes.dart';

import 'package:risloo_flutter/views/activities/activity_home.dart';

import 'package:risloo_flutter/views/fragments/fragment_accounting.dart';
import 'package:risloo_flutter/views/fragments/fragment_bulks.dart';
import 'package:risloo_flutter/views/fragments/fragment_centers.dart';
import 'package:risloo_flutter/views/fragments/fragment_dashboard.dart';
import 'package:risloo_flutter/views/fragments/fragment_downloads.dart';
import 'package:risloo_flutter/views/fragments/fragment_me.dart';
import 'package:risloo_flutter/views/fragments/fragment_payments.dart';
import 'package:risloo_flutter/views/fragments/fragment_samples.dart';
import 'package:risloo_flutter/views/fragments/fragment_scales.dart';
import 'package:risloo_flutter/views/fragments/fragment_sessions.dart';
import 'package:risloo_flutter/views/fragments/fragment_users.dart';

class ResMaps {

  // Activity Routes
  //////////////////////////////////////////////////

  static Map<String, Widget Function(BuildContext)> activityRoutes = {
    ResRoutes.activityHome: (context) => const ActivityHome(),
  };

  //////////////////////////////////////////////////

  // Fragment Routes
  //////////////////////////////////////////////////

  static Map<String, Widget > fragmentRoutes = {
    ResRoutes.fragmentDashboard: const FragmentDashboard(),
    ResRoutes.fragmentCenters: const FragmentCenters(),
    ResRoutes.fragmentSessions: const FragmentSessions(),
    ResRoutes.fragmentUsers: const FragmentUsers(),
    ResRoutes.fragmentSamples: const FragmentSamples(),
    ResRoutes.fragmentBulks: const FragmentBulks(),
    ResRoutes.fragmentScales: const FragmentScales(),
    ResRoutes.fragmentDownloads: const FragmentDownloads(),

    ResRoutes.fragmentMe: const FragmentMe(),
    ResRoutes.fragmentAccounting: const FragmentAccounting(),
    ResRoutes.fragmentPayments: const FragmentPayments(),
  };

  //////////////////////////////////////////////////

}