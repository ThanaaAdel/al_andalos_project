import 'package:flutter/material.dart';

import 'core/Routing/app_router.dart';
import 'core/di/dependacy_injection.dart';
import 'al_andalos_app.dart';

void main() {
  setupGetIt();
  runApp( AlAndalosApp(appRouter: AppRouter(),));
}