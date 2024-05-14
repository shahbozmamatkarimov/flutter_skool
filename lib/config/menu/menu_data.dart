import 'package:skool/core/resources/app_icons.dart';
import 'package:easy_localization/easy_localization.dart';

class MenuData {
  final String icon;
  final String text;
  final bool isActive;

  const MenuData({
    required this.icon,
    required this.text,
    this.isActive = true,
  });
}

abstract class AppMenu {
  static final dashboard =
      MenuData(icon: AppIcons.dashboard, text: "dashboard".tr());
  static final activity =
      MenuData(icon: AppIcons.activity, text: "activity".tr());
  static final requests =
      MenuData(icon: AppIcons.requests, text: "requests".tr());
  static final cases = MenuData(icon: AppIcons.cases, text: "cases".tr());
  static final team = MenuData(icon: AppIcons.team, text: "team".tr());
  static final clients = MenuData(icon: AppIcons.clients, text: "clients".tr());
  static final tasks = MenuData(icon: AppIcons.tasks, text: "tasks".tr());
  static final agenda = MenuData(icon: AppIcons.agenda, text: "agenda".tr());
  static final chat = MenuData(icon: AppIcons.chat, text: "chat".tr());
  static final adminPanel =
      MenuData(icon: AppIcons.adminPanel, text: "adminPanel".tr());
  static final logout = MenuData(icon: AppIcons.logout, text: "logout".tr());
}
