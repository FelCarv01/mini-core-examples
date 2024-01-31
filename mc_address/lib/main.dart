import 'package:asp/asp.dart';
import 'package:flutter/material.dart';

import 'app/app_widget.dart';
import 'app/injector.dart';

void main() {
  injector.commit();
  runApp(const RxRoot(child: Appwidget()));
}
