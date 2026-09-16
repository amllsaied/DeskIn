import 'package:deskin_app/core/routes/app_router.dart';
import 'package:deskin_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DeskInApp());
}

class DeskInApp extends StatelessWidget {
  const DeskInApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeskIn',
      initialRoute: AppRoutes.splashScreen,
      onGenerateRoute: AppRouter.onGenerateRoute,  
    );
  }
}