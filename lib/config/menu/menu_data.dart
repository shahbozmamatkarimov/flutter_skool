import 'package:easy_localization/easy_localization.dart';

class MenuData {
  final String text;
  final bool isActive;

  const MenuData({
    required this.text,
    this.isActive = true,
  });
}

abstract class AppMenu {
  static final dashboard = MenuData(text: "dashboard".tr());
  static final activity = MenuData(text: "activity".tr());
  static final requests = MenuData(text: "requests".tr());
  static final cases = MenuData(text: "cases".tr());
  static final team = MenuData(text: "team".tr());
  static final clients = MenuData(text: "clients".tr());
  static final tasks = MenuData(text: "tasks".tr());
  static final agenda = MenuData(text: "agenda".tr());
  static final chat = MenuData(text: "chat".tr());
  static final adminPanel = MenuData(text: "adminPanel".tr());
  static final logout = MenuData(text: "logout".tr());
}

abstract class CommunityMenu {
  static final dashboard = MenuData(text: "Dashboard".tr());
  static final payouts = MenuData(text: "Payouts".tr());
  static final invite = MenuData(text: "Invite".tr());
  static final general = MenuData(text: "General".tr());
  static final subscriptions = MenuData(text: "Subscriptions".tr());
  static final categories = MenuData(text: "Categories".tr());
  static final plugins = MenuData(text: "Plugins".tr());
  static final metrics = MenuData(text: "Metrics".tr());
  static final gamification = MenuData(text: "Gamification".tr());
  static final discovery = MenuData(text: "Discovery".tr());
  static final links = MenuData(text: "Links".tr());
  static final billing = MenuData(text: "Billing & referrals".tr());
}

abstract class ProfileMenu {
  static final profile = MenuData(text: "Profile".tr());
  static final account = MenuData(text: "Account".tr());
  static final password = MenuData(text: "Password".tr());
  static final notifications = MenuData(text: "Notifications".tr());
  static final chat = MenuData(text: "Chat".tr());
  static final communities = MenuData(text: "Communities".tr());
  static final referrals = MenuData(text: "Referrals".tr());
  static final payment_methods = MenuData(text: "Payment methods".tr());
  static final payment_history = MenuData(text: "Payment history".tr());
}
