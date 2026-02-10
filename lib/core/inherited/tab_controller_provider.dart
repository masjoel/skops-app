import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

/// InheritedWidget to provide PersistentTabController to the widget tree
class TabControllerProvider extends InheritedWidget {
  final PersistentTabController controller;
  
  /// ValueNotifier to communicate sub-tab navigation requests to MasterPage
  /// Format: int representing the sub-tab index (0-3)
  /// - 0: Skor Perilaku
  /// - 1: Siswa
  /// - 2: Guru
  /// - 3: Wali Kelas
  final ValueNotifier<int?> masterTabIndex;

  const TabControllerProvider({
    super.key,
    required this.controller,
    required this.masterTabIndex,
    required super.child,
  });

  static TabControllerProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TabControllerProvider>();
  }

  @override
  bool updateShouldNotify(TabControllerProvider oldWidget) {
    return controller != oldWidget.controller || 
           masterTabIndex != oldWidget.masterTabIndex;
  }
}
