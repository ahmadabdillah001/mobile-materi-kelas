import 'package:flutter/material.dart';

extension NavigatorExt on BuildContext {
  void pop<T extends Object>([T? result]) {
    Navigator.pop(this, result);
  }

  void popToRoot<T extends Object>() {
    Navigator.popUntil(this, (Route) => Route.isFirst);
  }

    Future<T?> push<T extends Object>(Widget widget, [String? name]) async{
    return Navigator.push<T>(
      this,
      MaterialPageRoute(builder: (context) => widget,
      settings: RouteSettings(name: name)
      ),
    );
  }

  Future<T?> pushRepLacement<T extends Object, TO extends Object>(
      Widget widget) async {
    return Navigator.pushReplacement<T, TO>(
      this,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}
