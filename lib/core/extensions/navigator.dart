import 'package:flutter/material.dart';

extension NavigatorExt on BuildContext {
  void pop<T extends Object?>([T? result]) {
    Navigator.popUntil(this, (route) => route.isFirst);
  }

  void popToRoot<T extends Object?>(){
    Navigator.popUntil(this, (route) => route.isFirst);
  }

  Future<T?> pushReplacement<T extends Object, TO extends Object>(
      Widget widget) async {
    return Navigator.pushReplacement<T, TO>(
      this,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}