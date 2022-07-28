import 'package:flutter/material.dart';

import 'package:risloo_flutter/utils/res/res_routes.dart';

import 'package:risloo_flutter/views/activities/activity_auth.dart';
import 'package:risloo_flutter/views/activities/activity_home.dart';

import 'package:risloo_flutter/views/fragments/auth/fragment_auth_login.dart';
import 'package:risloo_flutter/views/fragments/auth/fragment_auth_password_recover.dart';
import 'package:risloo_flutter/views/fragments/auth/fragment_auth_register.dart';

import 'package:risloo_flutter/views/fragments/home/fragment_home_accounting.dart';
import 'package:risloo_flutter/views/fragments/home/fragment_home_bulks.dart';
import 'package:risloo_flutter/views/fragments/home/fragment_home_centers.dart';
import 'package:risloo_flutter/views/fragments/home/fragment_home_dashboard.dart';
import 'package:risloo_flutter/views/fragments/home/fragment_home_downloads.dart';
import 'package:risloo_flutter/views/fragments/home/fragment_home_me.dart';
import 'package:risloo_flutter/views/fragments/home/fragment_home_payments.dart';
import 'package:risloo_flutter/views/fragments/home/fragment_home_samples.dart';
import 'package:risloo_flutter/views/fragments/home/fragment_home_scales.dart';
import 'package:risloo_flutter/views/fragments/home/fragment_home_sessions.dart';
import 'package:risloo_flutter/views/fragments/home/fragment_home_users.dart';

class ResMaps {

  // Activity Routes
  //////////////////////////////////////////////////

  static Map<String, Widget Function(BuildContext)> activityRoutes = {
    ResRoutes.activityAuth: (context) => const ActivityAuth(),
    ResRoutes.activityHome: (context) => const ActivityHome(),
  };

  //////////////////////////////////////////////////

  // Fragment Auth Routes
  //////////////////////////////////////////////////

  static Map<String, Widget> fragmentAuthRoutes = {
    ResRoutes.fragmentAuthLogin: const FragmentAuthLogin(),
    ResRoutes.fragmentAuthPasswordRecover: const FragmentAuthPasswordRecover(),
    ResRoutes.fragmentAuthRegister: const FragmentAuthRegister(),
  };

  //////////////////////////////////////////////////

  // Fragment Home Routes
  //////////////////////////////////////////////////

  static Map<String, Widget> fragmentHomeRoutes = {
    ResRoutes.fragmentHomeDashboard: const FragmentHomeDashboard(),
    ResRoutes.fragmentHomeCenters: const FragmentHomeCenters(),
    ResRoutes.fragmentHomeSessions: const FragmentHomeSessions(),
    ResRoutes.fragmentHomeUsers: const FragmentHomeUsers(),
    ResRoutes.fragmentHomeSamples: const FragmentHomeSamples(),
    ResRoutes.fragmentHomeBulks: const FragmentHomeBulks(),
    ResRoutes.fragmentHomeScales: const FragmentHomeScales(),
    ResRoutes.fragmentHomeDownloads: const FragmentHomeDownloads(),

    ResRoutes.fragmentHomeMe: const FragmentHomeMe(),
    ResRoutes.fragmentHomeAccounting: const FragmentHomeAccounting(),
    ResRoutes.fragmentHomePayments: const FragmentHomePayments(),
  };

  //////////////////////////////////////////////////

}